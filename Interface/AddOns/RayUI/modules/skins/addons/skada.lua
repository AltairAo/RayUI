﻿local R, L, P, G = unpack(select(2, ...)) --Import: Engine, Locales, ProfileDB, GlobalDB
local S = R:GetModule("Skins")

local function SkinSkada()
    local Skada = Skada
    local barSpacing = R:Scale(1)
    local bars = 8
    local windowWidth = 280

    Skada.classcolors = R.colors.class

    local AcceptFrame
    function Skada:ShowPopup()
        if not AcceptFrame then
            AcceptFrame = CreateFrame("Frame", "AcceptFrame", R.UIParent)
            S:SetBD(AcceptFrame)
            AcceptFrame:SetPoint("CENTER", R.UIParent, "CENTER")
            AcceptFrame:SetFrameStrata("DIALOG")
            AcceptFrame.Text = AcceptFrame:CreateFontString(nil, "OVERLAY")
            AcceptFrame.Text:SetFont(R["media"].font, 14)
            AcceptFrame.Text:SetPoint("TOP", AcceptFrame, "TOP", 0, -10)
            AcceptFrame.Accept = CreateFrame("Button", nil, AcceptFrame, "OptionsButtonTemplate")
            S:Reskin(AcceptFrame.Accept)
            AcceptFrame.Accept:SetSize(70, 25)
            AcceptFrame.Accept:SetPoint("RIGHT", AcceptFrame, "BOTTOM", -10, 20)
            AcceptFrame.Accept:SetFormattedText("|cFFFFFFFF%s|r", YES)
            AcceptFrame.Close = CreateFrame("Button", nil, AcceptFrame, "OptionsButtonTemplate")
            S:Reskin(AcceptFrame.Close)
            AcceptFrame.Close:SetSize(70, 25)
            AcceptFrame.Close:SetPoint("LEFT", AcceptFrame, "BOTTOM", 10, 20)
            AcceptFrame.Close:SetScript("OnClick", function(self) self:GetParent():Hide() end)
            AcceptFrame.Close:SetFormattedText("|cFFFFFFFF%s|r", NO)
        end
        AcceptFrame.Text:SetText(LibStub("AceLocale-3.0"):GetLocale("Skada", false)["Do you want to reset Skada?"])
        AcceptFrame:SetSize(AcceptFrame.Text:GetStringWidth() + 50, AcceptFrame.Text:GetStringHeight() + 60)
        AcceptFrame.Accept:SetScript("OnClick", function(self) Skada:Reset() self:GetParent():Hide() end)
        AcceptFrame:Show()
    end

    function Skada:FormatNumber(number)
        if number then
            if self.db.profile.numberformat == 1 then
                return R:ShortValue(math.floor(number))
            else
                return math.floor(number)
            end
        end
    end

    local barmod = Skada.displays["bar"]
    -- Used to strip unecessary options from the in-game config
    local function StripOptions(options)
        options.baroptions.args.barspacing = nil
        options.titleoptions.args.texture = nil
        options.titleoptions.args.bordertexture = nil
        options.titleoptions.args.thickness = nil
        options.titleoptions.args.margin = nil
        options.titleoptions.args.color = nil
        options.windowoptions = nil
        options.baroptions.args.barfont = nil
        options.baroptions.args.reversegrowth = nil
        options.titleoptions.args.font = nil
    end

    barmod.AddDisplayOptions_ = barmod.AddDisplayOptions
    barmod.AddDisplayOptions = function(self, win, options)
        self:AddDisplayOptions_(win, options)
        StripOptions(options)
    end

    for k, options in pairs(Skada.options.args.windows.args) do
        if options.type == "group" then
            StripOptions(options.args)
        end
    end

    barmod.ApplySettings_ = barmod.ApplySettings
    barmod.ApplySettings = function(self, win)
        barmod.ApplySettings_(self, win)

        local skada = win.bargroup

        if win.db.enabletitle then
            skada.button:SetBackdrop(nil)
        end

        skada:SetTexture(R["media"].normal)
        skada:SetSpacing(barSpacing)
        skada:SetFrameLevel(5)

        local titlefont = CreateFont("TitleFont"..win.db.name)
        titlefont:SetFont(R["media"].font, R["media"].fontsize, "OUTLINE")
        win.bargroup.button:SetNormalFontObject(titlefont)

        local color = win.db.title.color
        win.bargroup.button:SetBackdropColor(unpack(R["media"].bordercolor))

        skada:SetBackdrop(nil)
        if not skada.shadow then
            skada:StripTextures()
            skada:CreateShadow("Background")
            if skada.borderFrame then skada.borderFrame:Kill() end
        end
        skada.border:ClearAllPoints()
        skada.shadow:SetFrameStrata("BACKGROUND")
        if win.db.enabletitle then
            skada.border:Point("TOPLEFT", win.bargroup.button, "TOPLEFT", -1, 1)
        else
            skada.border:Point("TOPLEFT", win.bargroup, "TOPLEFT", -1, 1)
        end
        skada.border:Point("BOTTOMRIGHT", win.bargroup, "BOTTOMRIGHT", 1, -1)

        skada.button:SetFrameStrata("MEDIUM")
        skada.button:SetFrameLevel(5)
        skada:SetFrameStrata("MEDIUM")
    end

    hooksecurefunc(Skada, "UpdateDisplay", function(self)
            for _,window in ipairs(self:GetWindows()) do
                if window.bargroup.shadow then window.bargroup.shadow:SetFrameStrata("BACKGROUND") end
                for i,v in pairs(window.bargroup:GetBars()) do
                    if not v.BarStyled then
                        v.label:ClearAllPoints()
                        v.label.ClearAllPoints = R.dummy
                        v.label:SetPoint("LEFT", v, "LEFT", 2, 0)
                        v.label.SetPoint = R.dummy
                        v.timerLabel:ClearAllPoints()
                        v.timerLabel.ClearAllPoints = R.dummy
                        v.timerLabel:SetPoint("RIGHT", v, "RIGHT", -2, 0)
                        v.timerLabel.SetPoint = R.dummy
                        v.label:SetFont(R["media"].font, R["media"].fontsize, "OUTLINE")
                        v.label.SetFont = R.dummy
                        v.timerLabel:SetFont(R["media"].font, R["media"].fontsize, "OUTLINE")
                        v.timerLabel.SetFont = R.dummy
                        v.label:SetShadowOffset(0, 0)
                        v.label.SetShadowOffset = R.dummy
                        v.timerLabel:SetShadowOffset(0, 0)
                        v.timerLabel.SetShadowOffset = R.dummy
                        v.BarStyled = true
                    end
                end
            end
        end)

    hooksecurefunc(Skada, "OpenReportWindow", function(self)
            if not self.ReportWindow.frame.reskinned then
                self.ReportWindow.frame:StripTextures()
                S:SetBD(self.ReportWindow.frame)
                local closeButton = self.ReportWindow.frame:GetChildren()
                S:ReskinClose(closeButton)
                self.ReportWindow.frame.reskinned = true
            end
        end)

    if not S.db.skadaposition then return end

    local function EmbedWindow(window, width, barheight, height, point, relativeFrame, relativePoint, ofsx, ofsy)
        window.db.barwidth = width
        window.db.barheight = barheight
        if window.db.enabletitle then
            height = height - barheight
        else
            height = height + barSpacing
        end
        window.db.background.height = height
        window.db.spark = false
        window.db.barslocked = true
        window.bargroup:ClearAllPoints()
        window.bargroup:SetPoint(point, relativeFrame, relativePoint, ofsx, ofsy)

        barmod.ApplySettings(barmod, window)
    end

    local windows = {}
    function EmbedSkada()
        if #windows == 1 then
            EmbedWindow(windows[1], windowWidth, 140/bars - barSpacing, 140, "BOTTOMRIGHT", R.UIParent, "BOTTOMRIGHT", -15, 30)
        elseif #windows == 2 then
            EmbedWindow(windows[1], windowWidth*3/4, 140/bars - barSpacing, 140, "BOTTOMRIGHT", R.UIParent, "BOTTOMRIGHT", -15, 30)
            EmbedWindow(windows[2], windowWidth*3/4, 140/bars - barSpacing, 140, "BOTTOMRIGHT", R.UIParent, "BOTTOMRIGHT", - windowWidth*3/4 - 25, 30)
        end
    end

    -- Update pre-existing displays
    for _, window in ipairs(Skada:GetWindows()) do
        window:UpdateDisplay()
    end

    Skada.CreateWindow_ = Skada.CreateWindow
    function Skada:CreateWindow(name, db)
        Skada:CreateWindow_(name, db)

        windows = {}
        for _, window in ipairs(Skada:GetWindows()) do
            tinsert(windows, window)
        end

        EmbedSkada()
    end

    Skada.DeleteWindow_ = Skada.DeleteWindow
    function Skada:DeleteWindow(name)
        Skada:DeleteWindow_(name)

        windows = {}
        for _, window in ipairs(Skada:GetWindows()) do
            tinsert(windows, window)
        end

        EmbedSkada()
    end

    local Skada_Skin = CreateFrame("Frame")
    Skada_Skin:RegisterEvent("PLAYER_ENTERING_WORLD")
    Skada_Skin:SetScript("OnEvent", function(self)
            self:UnregisterAllEvents()
            self = nil

            EmbedSkada()
        end)

    local lib = LibStub("SpecializedLibBars-1.0")
    hooksecurefunc(lib.barPrototype, "UpdateColor", function(self)
            local r, g, b = self.texture:GetVertexColor()
            self.texture:SetGradient("VERTICAL", R:GetGradientColor(r, g, b))
            if not self.border then
                self:CreateShadow()
                self.border:SetFrameLevel(self:GetFrameLevel())
            end
            self.shadow:Hide()
            self.border:ClearAllPoints()
            if self.icon:IsVisible() then
                self.border:Point("TOPLEFT", self.texture, "TOPLEFT", -self.icon:GetWidth(), 1)
                self.border:Point("BOTTOMRIGHT", self.texture, "BOTTOMRIGHT", 1, -1)
            else
                self.border:SetOutside(self.texture, 1, 1)
            end
        end)
end

S:AddCallbackForAddon("Skada", "Skada", SkinSkada)
