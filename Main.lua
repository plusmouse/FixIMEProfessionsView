local frame = CreateFrame("Frame")
frame:RegisterEvent("TRADE_SKILL_SHOW")
frame:SetScript("OnEvent", function()
  frame:UnregisterEvent("TRADE_SKILL_SHOW")
  ProfessionsFrame.CraftingPage.RecipeList.SearchBox:SetScript("OnTextChanged", function(self, isUserInput)
    SearchBoxTemplate_OnTextChanged(self)
    local text = self:GetText()
    if isUserInput and not self:IsInIMECompositionMode() then
      ProfessionsFrame.CraftingPage.RecipeList.SearchBox:SetText(text);
      ProfessionsFrame.CraftingPage.MinimizedSearchBox:SetText(text);
      Professions.OnRecipeListSearchTextChanged(text);
    end
  end)
  ProfessionsFrame.CraftingPage.MinimizedSearchBox:SetScript("OnTextChanged", function(self, isUserInput)
    SearchBoxTemplate_OnTextChanged(self)
    local text = self:GetText()
    if isUserInput and not self:IsInIMECompositionMode() then
      ProfessionsFrame.CraftingPage.RecipeList.SearchBox:SetText(text);
      ProfessionsFrame.CraftingPage.MinimizedSearchBox:SetText(text);
      Professions.OnRecipeListSearchTextChanged(text);
    end
  end)
end)
