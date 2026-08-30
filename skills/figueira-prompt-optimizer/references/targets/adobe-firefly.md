# Adobe Firefly adapter

Adobe Firefly is both a creation surface and a host for multiple generation models. Resolve the selected model when known and combine this surface adapter with the relevant model adapter.

## Image
Use simple, direct, descriptive language. Avoid conversational filler such as "please generate". Describe subject, descriptors, scene/style and important composition details. Keep controls that exist as Firefly UI settings separate from prose when practical.

## Video
A useful Firefly Video structure is:
`Shot type + character/subject + action + location + aesthetic`

Add camera movement, lighting/color grade, mood and temporal behavior when they materially affect the shot.

For image-to-video, focus on motion and camera behavior instead of re-describing the input frame.

## References and UI controls
Firefly can expose composition references, motion-reference video and camera controls. When a reference is supplied, identify its role. If motion reference already controls camera movement, do not add contradictory camera instructions.

Because Firefly can host external models, do not assume Firefly Video/Image rules override a selected external model's prompting behavior. Compose both adapters.
