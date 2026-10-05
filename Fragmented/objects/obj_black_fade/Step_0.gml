alpha += alpha_change;
image_alpha = alpha;

if (alpha > 1)

{
	alpha_change *= -1
}

if(alpha <= 0)

{
	instance_destroy();
}