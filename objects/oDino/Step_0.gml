image_speed = .8;

//applying gravity
_curVelocity += _gravityForce;

//applying upforce
if(keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
	_curVelocity += _jumpForce;
}

//setting force
_curVelocity = clamp(_curVelocity, _maxFallVelocity, _maxJumpVelocity);
y += _curVelocity;

//update sprite
sprite_index = _curVelocity < 0 ? sprDino_Climb : sprDino_Fall;