/// @description approach(_variable, _target, _amount)
/// @param _variable
/// @param _target
/// @param _amount

function approach(_variable, _target, _amount) {
	if (_variable < _target)
	{
	    _variable += _amount;
	    if (_variable > _target)
	        return _target;
	}
	else
	{
	    _variable -= _amount;
	    if (_variable < _target)
	        return _target;
	}
	return _variable;
}
