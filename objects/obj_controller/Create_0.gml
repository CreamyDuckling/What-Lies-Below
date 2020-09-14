/// @description Variable Initialization

#region SINGLETON CHECK

if (global.controllerID != noone){
	if (global.controllerID.object_index == object_index){
		instance_destroy(self);
		return;
	}
	instance_destroy(global.controllerID);
}
global.controllerID = id;

#endregion

#region EDITING INHERITED VARIABLES

image_speed = 0;
image_index = 0;
//visible = false;

#endregion

#region UNIQUE VARIABLE INITIALIZATION

// VARIABLES FOR THE CAMERA ////////////////////////////////////////////////////////

// Store the created camera's ID for easy reference.
cameraID = -1;

// Holds the target position to move to whenever the camera is unlocked and not following an object.
// The fraction holds the values for the movement until it surpasses one, which will then add/subtract
// a value of one to current camera position. The move speed determines how fast it will reach that position.
targetPosition = [0, 0];
targetFraction = [0, 0];
moveSpeed = 0.25;

// Holds the instance ID for the object being followed by the camera. The deadzone radius is the distance
// from the center of the screen that the camera won't snap the the followed object's position.
curObject = noone;
deadZoneRadius = 8;

// A flag that is set to true to move the camera to the newly set object's position without snapping.
newObjectSet = false;

// After initializing all camera variables, create the camera with default aspect ratio/scale.
create_camera(SIXTEEN_BY_NINE, 4);

////////////////////////////////////////////////////////////////////////////////////

#endregion