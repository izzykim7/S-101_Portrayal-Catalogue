-- Converter Version: 0.99
-- Feature Catalogue Version: 1.0.0 (2019/4/9)

-- Referenced portrayal rules.
require 'TOPMAR01'

-- Buoy Safe Water main entry point.
function BuoySafeWater(feature, featurePortrayal, contextParameters)
	local viewingGroup

	featurePortrayal:AddInstructions('AlertReference:NavHazard,115,115;Hover:true')

	if feature.PrimitiveType == PrimitiveType.Point and contextParameters.SimplifiedPoints then
		viewingGroup = 27010
		if contextParameters.RadarOverlay then
			featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:OverRADAR')
		else
			featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:UnderRADAR')
		end
		featurePortrayal:AddInstructions('PointInstruction:BOYSAW12')
		if feature.featureName[1] and feature.featureName[1].name then
			featurePortrayal:AddInstructions('LocalOffset:-3.51,3.51;TextAlignHorizontal:End;FontSize:10')
			featurePortrayal:AddTextInstruction(EncodeString(GetFeatureName(feature, contextParameters), 'by %s'), 21, 24, 27010, 24)
		end
	elseif feature.PrimitiveType == PrimitiveType.Point then
		if feature.buoyShape == 3 then
			viewingGroup = 27010
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BOYSPH01')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:-3.51,3.51;TextAlignHorizontal:End;FontSize:10')
				featurePortrayal:AddTextInstruction(EncodeString(GetFeatureName(feature, contextParameters), 'by %s'), 21, 24, 27010, 24)
			end
			TOPMAR01(feature, featurePortrayal, contextParameters, viewingGroup, true)
		elseif feature.buoyShape == 4 then
			viewingGroup = 27010
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BOYPIL01')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:-3.51,3.51;TextAlignHorizontal:End;FontSize:10')
				featurePortrayal:AddTextInstruction(EncodeString(GetFeatureName(feature, contextParameters), 'by %s'), 21, 24, 27010, 24)
			end
			TOPMAR01(feature, featurePortrayal, contextParameters, viewingGroup, true)
		elseif feature.buoyShape == 5 then
			viewingGroup = 27010
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BOYSPR01')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:-3.51,3.51;TextAlignHorizontal:End;FontSize:10')
				featurePortrayal:AddTextInstruction(EncodeString(GetFeatureName(feature, contextParameters), 'by %s'), 21, 24, 27010, 24)
			end
			TOPMAR01(feature, featurePortrayal, contextParameters, viewingGroup, true)
		elseif feature.buoyShape == 6 then
			viewingGroup = 27010
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BOYBAR01')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:-3.51,3.51;TextAlignHorizontal:End;FontSize:10')
				featurePortrayal:AddTextInstruction(EncodeString(GetFeatureName(feature, contextParameters), 'by %s'), 21, 24, 27010, 24)
			end
			TOPMAR01(feature, featurePortrayal, contextParameters, viewingGroup, true)
		elseif feature.buoyShape == 7 then
			viewingGroup = 27010
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BOYSUP01')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:-7.02,3.51;TextAlignHorizontal:End;FontSize:10')
				featurePortrayal:AddTextInstruction(EncodeString(GetFeatureName(feature, contextParameters), 'by %s'), 21, 24, 27010, 24)
			end
			TOPMAR01(feature, featurePortrayal, contextParameters, viewingGroup, true)
		elseif feature.buoyShape == 8 then
			viewingGroup = 27010
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BOYSPR01')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:-3.51,3.51;TextAlignHorizontal:End;FontSize:10')
				featurePortrayal:AddTextInstruction(EncodeString(GetFeatureName(feature, contextParameters), 'by %s'), 21, 24, 27010, 24)
			end
			TOPMAR01(feature, featurePortrayal, contextParameters, viewingGroup, true)
		else
			viewingGroup = 27010
			if contextParameters.RadarOverlay then
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:OverRADAR')
			else
				featurePortrayal:AddInstructions('ViewingGroup:27010;DrawingPriority:24;DisplayPlane:UnderRADAR')
			end
			featurePortrayal:AddInstructions('PointInstruction:BOYGEN03')
			if feature.featureName[1] and feature.featureName[1].name then
				featurePortrayal:AddInstructions('LocalOffset:-3.51,3.51;TextAlignHorizontal:End;FontSize:10')
				featurePortrayal:AddTextInstruction(EncodeString(GetFeatureName(feature, contextParameters), 'by %s'), 21, 24, 27010, 24)
			end
			TOPMAR01(feature, featurePortrayal, contextParameters, viewingGroup, true)
		end
	else
		error('Invalid primitive type or mariner settings passed to portrayal')
	end

	return viewingGroup
end