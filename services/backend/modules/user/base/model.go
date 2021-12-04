package base

type UserBody struct {
	ID           int    `json:"id"`
	Fullname     string `json:"fullname"`
	Highlight    string `json:"highlight"`
	MobileNumber string `json:"mobileNumber"`
	Bio          string `json:"bio"`
	Learners     int    `json:"learners"`
}

type TeacherBody struct {
	ID        int    `json:"id"`
	Fullname  string `json:"fullname"`
	Highlight string `json:"highlight"`
	Picture   string `json:"picture"`
}
