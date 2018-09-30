((box1 distance  delivery_point) < 5) && ((box2 distance  delivery_point) < 5) && ((box3 distance  delivery_point) < 5) && ((box4 distance  delivery_point) < 5)

_distb1 = box1 distance delivery_point;
_distb2 = box2 distance delivery_point;
_distb3 = box3 distance delivery_point;
_distb4 = box4 distance delivery_point;

hintSilent format ["Distance from Target:\nBox 1 = %1 meters\nBox 2 = %2 meters\nBox 3 = %3 meters\nBox 4 = %4 meters\n",_distb1,_distb2,_distb3,_distb4];