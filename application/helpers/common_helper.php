<?php
function public_url($url = '')
{
	return base_url('public/'.$url);
}

function pre($list, $exit = true)
{
	echo "<pre>";
	print_r($list);
	if($exit)
	{
		die();
	}
}

// Chuyen tieng viet khong dau san co dau

function convert_vi_to_en($str)
{
	$characters = array(
		'/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/' => 'a',
		'/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/' => 'e',
		'/ì|í|ị|ỉ|ĩ/' => 'i',
		'/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/' =>'o',
		'/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/' => 'u',
		'/ỳ|ý|ỵ|ỷ|ỹ/' => 'y',
		'/đ/' => 'd',
		'/À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ/' => 'A',
		'/È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ/' => 'E',
		'/Ì|Í|Ị|Ỉ|Ĩ/' => 'I',
		'/Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ/' => 'O',
		'/Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ/' => 'U',
		'/Ỳ|Ý|Ỵ|Ỷ|Ỹ/' => 'Y',
		'/Đ/' => 'D',
	);

	return preg_replace(array_keys($characters), array_values($characters), $str);

}