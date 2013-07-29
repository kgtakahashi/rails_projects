# coding: utf-8

names = ["高橋　刑事", "前田　翼", "高橋　祐介", "松村　裕"]

0.upto(3) do |idx|
	menter = Menter.create(
	{	name: names[idx],
		career: "大阪大学中退",
		rate: 100 * idx,
		password: "password",
		password_confirmation: "password"
		}, without_protection: true)

	fname = Rails.root.join("db/seeds/development", "sample_face.jpg")
	MenterImage.create(
	{ menter: menter,
		data: File.open(fname, "rb").read,
		content_type: "image/jpeg"
	}, without_protection: true)
end
