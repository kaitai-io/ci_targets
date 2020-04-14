// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
	"strconv"
)

type BcdUserTypeBe struct {
	Ltr *BcdUserTypeBe_LtrObj
	Rtl *BcdUserTypeBe_RtlObj
	LeadingZeroLtr *BcdUserTypeBe_LeadingZeroLtrObj
	_io *kaitai.Stream
	_root *BcdUserTypeBe
	_parent interface{}
	_raw_Ltr []byte
	_raw_Rtl []byte
	_raw_LeadingZeroLtr []byte
}
func NewBcdUserTypeBe() *BcdUserTypeBe {
	return &BcdUserTypeBe{
	}
}

func (this *BcdUserTypeBe) Read(io *kaitai.Stream, parent interface{}, root *BcdUserTypeBe) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this._raw_Ltr = tmp1
	_io__raw_Ltr := kaitai.NewStream(bytes.NewReader(this._raw_Ltr))
	tmp2 := NewBcdUserTypeBe_LtrObj()
	err = tmp2.Read(_io__raw_Ltr, this, this._root)
	if err != nil {
		return err
	}
	this.Ltr = tmp2
	tmp3, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this._raw_Rtl = tmp3
	_io__raw_Rtl := kaitai.NewStream(bytes.NewReader(this._raw_Rtl))
	tmp4 := NewBcdUserTypeBe_RtlObj()
	err = tmp4.Read(_io__raw_Rtl, this, this._root)
	if err != nil {
		return err
	}
	this.Rtl = tmp4
	tmp5, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this._raw_LeadingZeroLtr = tmp5
	_io__raw_LeadingZeroLtr := kaitai.NewStream(bytes.NewReader(this._raw_LeadingZeroLtr))
	tmp6 := NewBcdUserTypeBe_LeadingZeroLtrObj()
	err = tmp6.Read(_io__raw_LeadingZeroLtr, this, this._root)
	if err != nil {
		return err
	}
	this.LeadingZeroLtr = tmp6
	return err
}
type BcdUserTypeBe_LtrObj struct {
	B1 uint8
	B2 uint8
	B3 uint8
	B4 uint8
	_io *kaitai.Stream
	_root *BcdUserTypeBe
	_parent *BcdUserTypeBe
	_f_asInt bool
	asInt int
	_f_digit2 bool
	digit2 int
	_f_digit4 bool
	digit4 int
	_f_digit3 bool
	digit3 int
	_f_digit5 bool
	digit5 int
	_f_digit8 bool
	digit8 int
	_f_digit6 bool
	digit6 int
	_f_asStr bool
	asStr string
	_f_digit1 bool
	digit1 int
	_f_digit7 bool
	digit7 int
}
func NewBcdUserTypeBe_LtrObj() *BcdUserTypeBe_LtrObj {
	return &BcdUserTypeBe_LtrObj{
	}
}

func (this *BcdUserTypeBe_LtrObj) Read(io *kaitai.Stream, parent *BcdUserTypeBe, root *BcdUserTypeBe) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp7, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B1 = tmp7
	tmp8, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B2 = tmp8
	tmp9, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B3 = tmp9
	tmp10, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B4 = tmp10
	return err
}
func (this *BcdUserTypeBe_LtrObj) AsInt() (v int, err error) {
	if (this._f_asInt) {
		return this.asInt, nil
	}
	tmp11, err := this.Digit8()
	if err != nil {
		return 0, err
	}
	tmp12, err := this.Digit7()
	if err != nil {
		return 0, err
	}
	tmp13, err := this.Digit6()
	if err != nil {
		return 0, err
	}
	tmp14, err := this.Digit5()
	if err != nil {
		return 0, err
	}
	tmp15, err := this.Digit4()
	if err != nil {
		return 0, err
	}
	tmp16, err := this.Digit3()
	if err != nil {
		return 0, err
	}
	tmp17, err := this.Digit2()
	if err != nil {
		return 0, err
	}
	tmp18, err := this.Digit1()
	if err != nil {
		return 0, err
	}
	this.asInt = int(((((((((tmp11 * 1) + (tmp12 * 10)) + (tmp13 * 100)) + (tmp14 * 1000)) + (tmp15 * 10000)) + (tmp16 * 100000)) + (tmp17 * 1000000)) + (tmp18 * 10000000)))
	this._f_asInt = true
	return this.asInt, nil
}
func (this *BcdUserTypeBe_LtrObj) Digit2() (v int, err error) {
	if (this._f_digit2) {
		return this.digit2, nil
	}
	this.digit2 = int((this.B1 & 15))
	this._f_digit2 = true
	return this.digit2, nil
}
func (this *BcdUserTypeBe_LtrObj) Digit4() (v int, err error) {
	if (this._f_digit4) {
		return this.digit4, nil
	}
	this.digit4 = int((this.B2 & 15))
	this._f_digit4 = true
	return this.digit4, nil
}
func (this *BcdUserTypeBe_LtrObj) Digit3() (v int, err error) {
	if (this._f_digit3) {
		return this.digit3, nil
	}
	this.digit3 = int(((this.B2 & 240) >> 4))
	this._f_digit3 = true
	return this.digit3, nil
}
func (this *BcdUserTypeBe_LtrObj) Digit5() (v int, err error) {
	if (this._f_digit5) {
		return this.digit5, nil
	}
	this.digit5 = int(((this.B3 & 240) >> 4))
	this._f_digit5 = true
	return this.digit5, nil
}
func (this *BcdUserTypeBe_LtrObj) Digit8() (v int, err error) {
	if (this._f_digit8) {
		return this.digit8, nil
	}
	this.digit8 = int((this.B4 & 15))
	this._f_digit8 = true
	return this.digit8, nil
}
func (this *BcdUserTypeBe_LtrObj) Digit6() (v int, err error) {
	if (this._f_digit6) {
		return this.digit6, nil
	}
	this.digit6 = int((this.B3 & 15))
	this._f_digit6 = true
	return this.digit6, nil
}
func (this *BcdUserTypeBe_LtrObj) AsStr() (v string, err error) {
	if (this._f_asStr) {
		return this.asStr, nil
	}
	tmp19, err := this.Digit1()
	if err != nil {
		return "", err
	}
	tmp20, err := this.Digit2()
	if err != nil {
		return "", err
	}
	tmp21, err := this.Digit3()
	if err != nil {
		return "", err
	}
	tmp22, err := this.Digit4()
	if err != nil {
		return "", err
	}
	tmp23, err := this.Digit5()
	if err != nil {
		return "", err
	}
	tmp24, err := this.Digit6()
	if err != nil {
		return "", err
	}
	tmp25, err := this.Digit7()
	if err != nil {
		return "", err
	}
	tmp26, err := this.Digit8()
	if err != nil {
		return "", err
	}
	this.asStr = string(strconv.FormatInt(int64(tmp19), 10) + strconv.FormatInt(int64(tmp20), 10) + strconv.FormatInt(int64(tmp21), 10) + strconv.FormatInt(int64(tmp22), 10) + strconv.FormatInt(int64(tmp23), 10) + strconv.FormatInt(int64(tmp24), 10) + strconv.FormatInt(int64(tmp25), 10) + strconv.FormatInt(int64(tmp26), 10))
	this._f_asStr = true
	return this.asStr, nil
}
func (this *BcdUserTypeBe_LtrObj) Digit1() (v int, err error) {
	if (this._f_digit1) {
		return this.digit1, nil
	}
	this.digit1 = int(((this.B1 & 240) >> 4))
	this._f_digit1 = true
	return this.digit1, nil
}
func (this *BcdUserTypeBe_LtrObj) Digit7() (v int, err error) {
	if (this._f_digit7) {
		return this.digit7, nil
	}
	this.digit7 = int(((this.B4 & 240) >> 4))
	this._f_digit7 = true
	return this.digit7, nil
}
type BcdUserTypeBe_RtlObj struct {
	B1 uint8
	B2 uint8
	B3 uint8
	B4 uint8
	_io *kaitai.Stream
	_root *BcdUserTypeBe
	_parent *BcdUserTypeBe
	_f_asInt bool
	asInt int
	_f_digit2 bool
	digit2 int
	_f_digit4 bool
	digit4 int
	_f_digit3 bool
	digit3 int
	_f_digit5 bool
	digit5 int
	_f_digit8 bool
	digit8 int
	_f_digit6 bool
	digit6 int
	_f_asStr bool
	asStr string
	_f_digit1 bool
	digit1 int
	_f_digit7 bool
	digit7 int
}
func NewBcdUserTypeBe_RtlObj() *BcdUserTypeBe_RtlObj {
	return &BcdUserTypeBe_RtlObj{
	}
}

func (this *BcdUserTypeBe_RtlObj) Read(io *kaitai.Stream, parent *BcdUserTypeBe, root *BcdUserTypeBe) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp27, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B1 = tmp27
	tmp28, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B2 = tmp28
	tmp29, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B3 = tmp29
	tmp30, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B4 = tmp30
	return err
}
func (this *BcdUserTypeBe_RtlObj) AsInt() (v int, err error) {
	if (this._f_asInt) {
		return this.asInt, nil
	}
	tmp31, err := this.Digit1()
	if err != nil {
		return 0, err
	}
	tmp32, err := this.Digit2()
	if err != nil {
		return 0, err
	}
	tmp33, err := this.Digit3()
	if err != nil {
		return 0, err
	}
	tmp34, err := this.Digit4()
	if err != nil {
		return 0, err
	}
	tmp35, err := this.Digit5()
	if err != nil {
		return 0, err
	}
	tmp36, err := this.Digit6()
	if err != nil {
		return 0, err
	}
	tmp37, err := this.Digit7()
	if err != nil {
		return 0, err
	}
	tmp38, err := this.Digit8()
	if err != nil {
		return 0, err
	}
	this.asInt = int(((((((((tmp31 * 1) + (tmp32 * 10)) + (tmp33 * 100)) + (tmp34 * 1000)) + (tmp35 * 10000)) + (tmp36 * 100000)) + (tmp37 * 1000000)) + (tmp38 * 10000000)))
	this._f_asInt = true
	return this.asInt, nil
}
func (this *BcdUserTypeBe_RtlObj) Digit2() (v int, err error) {
	if (this._f_digit2) {
		return this.digit2, nil
	}
	this.digit2 = int((this.B1 & 15))
	this._f_digit2 = true
	return this.digit2, nil
}
func (this *BcdUserTypeBe_RtlObj) Digit4() (v int, err error) {
	if (this._f_digit4) {
		return this.digit4, nil
	}
	this.digit4 = int((this.B2 & 15))
	this._f_digit4 = true
	return this.digit4, nil
}
func (this *BcdUserTypeBe_RtlObj) Digit3() (v int, err error) {
	if (this._f_digit3) {
		return this.digit3, nil
	}
	this.digit3 = int(((this.B2 & 240) >> 4))
	this._f_digit3 = true
	return this.digit3, nil
}
func (this *BcdUserTypeBe_RtlObj) Digit5() (v int, err error) {
	if (this._f_digit5) {
		return this.digit5, nil
	}
	this.digit5 = int(((this.B3 & 240) >> 4))
	this._f_digit5 = true
	return this.digit5, nil
}
func (this *BcdUserTypeBe_RtlObj) Digit8() (v int, err error) {
	if (this._f_digit8) {
		return this.digit8, nil
	}
	this.digit8 = int((this.B4 & 15))
	this._f_digit8 = true
	return this.digit8, nil
}
func (this *BcdUserTypeBe_RtlObj) Digit6() (v int, err error) {
	if (this._f_digit6) {
		return this.digit6, nil
	}
	this.digit6 = int((this.B3 & 15))
	this._f_digit6 = true
	return this.digit6, nil
}
func (this *BcdUserTypeBe_RtlObj) AsStr() (v string, err error) {
	if (this._f_asStr) {
		return this.asStr, nil
	}
	tmp39, err := this.Digit8()
	if err != nil {
		return "", err
	}
	tmp40, err := this.Digit7()
	if err != nil {
		return "", err
	}
	tmp41, err := this.Digit6()
	if err != nil {
		return "", err
	}
	tmp42, err := this.Digit5()
	if err != nil {
		return "", err
	}
	tmp43, err := this.Digit4()
	if err != nil {
		return "", err
	}
	tmp44, err := this.Digit3()
	if err != nil {
		return "", err
	}
	tmp45, err := this.Digit2()
	if err != nil {
		return "", err
	}
	tmp46, err := this.Digit1()
	if err != nil {
		return "", err
	}
	this.asStr = string(strconv.FormatInt(int64(tmp39), 10) + strconv.FormatInt(int64(tmp40), 10) + strconv.FormatInt(int64(tmp41), 10) + strconv.FormatInt(int64(tmp42), 10) + strconv.FormatInt(int64(tmp43), 10) + strconv.FormatInt(int64(tmp44), 10) + strconv.FormatInt(int64(tmp45), 10) + strconv.FormatInt(int64(tmp46), 10))
	this._f_asStr = true
	return this.asStr, nil
}
func (this *BcdUserTypeBe_RtlObj) Digit1() (v int, err error) {
	if (this._f_digit1) {
		return this.digit1, nil
	}
	this.digit1 = int(((this.B1 & 240) >> 4))
	this._f_digit1 = true
	return this.digit1, nil
}
func (this *BcdUserTypeBe_RtlObj) Digit7() (v int, err error) {
	if (this._f_digit7) {
		return this.digit7, nil
	}
	this.digit7 = int(((this.B4 & 240) >> 4))
	this._f_digit7 = true
	return this.digit7, nil
}
type BcdUserTypeBe_LeadingZeroLtrObj struct {
	B1 uint8
	B2 uint8
	B3 uint8
	B4 uint8
	_io *kaitai.Stream
	_root *BcdUserTypeBe
	_parent *BcdUserTypeBe
	_f_asInt bool
	asInt int
	_f_digit2 bool
	digit2 int
	_f_digit4 bool
	digit4 int
	_f_digit3 bool
	digit3 int
	_f_digit5 bool
	digit5 int
	_f_digit8 bool
	digit8 int
	_f_digit6 bool
	digit6 int
	_f_asStr bool
	asStr string
	_f_digit1 bool
	digit1 int
	_f_digit7 bool
	digit7 int
}
func NewBcdUserTypeBe_LeadingZeroLtrObj() *BcdUserTypeBe_LeadingZeroLtrObj {
	return &BcdUserTypeBe_LeadingZeroLtrObj{
	}
}

func (this *BcdUserTypeBe_LeadingZeroLtrObj) Read(io *kaitai.Stream, parent *BcdUserTypeBe, root *BcdUserTypeBe) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp47, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B1 = tmp47
	tmp48, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B2 = tmp48
	tmp49, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B3 = tmp49
	tmp50, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.B4 = tmp50
	return err
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) AsInt() (v int, err error) {
	if (this._f_asInt) {
		return this.asInt, nil
	}
	tmp51, err := this.Digit8()
	if err != nil {
		return 0, err
	}
	tmp52, err := this.Digit7()
	if err != nil {
		return 0, err
	}
	tmp53, err := this.Digit6()
	if err != nil {
		return 0, err
	}
	tmp54, err := this.Digit5()
	if err != nil {
		return 0, err
	}
	tmp55, err := this.Digit4()
	if err != nil {
		return 0, err
	}
	tmp56, err := this.Digit3()
	if err != nil {
		return 0, err
	}
	tmp57, err := this.Digit2()
	if err != nil {
		return 0, err
	}
	tmp58, err := this.Digit1()
	if err != nil {
		return 0, err
	}
	this.asInt = int(((((((((tmp51 * 1) + (tmp52 * 10)) + (tmp53 * 100)) + (tmp54 * 1000)) + (tmp55 * 10000)) + (tmp56 * 100000)) + (tmp57 * 1000000)) + (tmp58 * 10000000)))
	this._f_asInt = true
	return this.asInt, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) Digit2() (v int, err error) {
	if (this._f_digit2) {
		return this.digit2, nil
	}
	this.digit2 = int((this.B1 & 15))
	this._f_digit2 = true
	return this.digit2, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) Digit4() (v int, err error) {
	if (this._f_digit4) {
		return this.digit4, nil
	}
	this.digit4 = int((this.B2 & 15))
	this._f_digit4 = true
	return this.digit4, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) Digit3() (v int, err error) {
	if (this._f_digit3) {
		return this.digit3, nil
	}
	this.digit3 = int(((this.B2 & 240) >> 4))
	this._f_digit3 = true
	return this.digit3, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) Digit5() (v int, err error) {
	if (this._f_digit5) {
		return this.digit5, nil
	}
	this.digit5 = int(((this.B3 & 240) >> 4))
	this._f_digit5 = true
	return this.digit5, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) Digit8() (v int, err error) {
	if (this._f_digit8) {
		return this.digit8, nil
	}
	this.digit8 = int((this.B4 & 15))
	this._f_digit8 = true
	return this.digit8, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) Digit6() (v int, err error) {
	if (this._f_digit6) {
		return this.digit6, nil
	}
	this.digit6 = int((this.B3 & 15))
	this._f_digit6 = true
	return this.digit6, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) AsStr() (v string, err error) {
	if (this._f_asStr) {
		return this.asStr, nil
	}
	tmp59, err := this.Digit1()
	if err != nil {
		return "", err
	}
	tmp60, err := this.Digit2()
	if err != nil {
		return "", err
	}
	tmp61, err := this.Digit3()
	if err != nil {
		return "", err
	}
	tmp62, err := this.Digit4()
	if err != nil {
		return "", err
	}
	tmp63, err := this.Digit5()
	if err != nil {
		return "", err
	}
	tmp64, err := this.Digit6()
	if err != nil {
		return "", err
	}
	tmp65, err := this.Digit7()
	if err != nil {
		return "", err
	}
	tmp66, err := this.Digit8()
	if err != nil {
		return "", err
	}
	this.asStr = string(strconv.FormatInt(int64(tmp59), 10) + strconv.FormatInt(int64(tmp60), 10) + strconv.FormatInt(int64(tmp61), 10) + strconv.FormatInt(int64(tmp62), 10) + strconv.FormatInt(int64(tmp63), 10) + strconv.FormatInt(int64(tmp64), 10) + strconv.FormatInt(int64(tmp65), 10) + strconv.FormatInt(int64(tmp66), 10))
	this._f_asStr = true
	return this.asStr, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) Digit1() (v int, err error) {
	if (this._f_digit1) {
		return this.digit1, nil
	}
	this.digit1 = int(((this.B1 & 240) >> 4))
	this._f_digit1 = true
	return this.digit1, nil
}
func (this *BcdUserTypeBe_LeadingZeroLtrObj) Digit7() (v int, err error) {
	if (this._f_digit7) {
		return this.digit7, nil
	}
	this.digit7 = int(((this.B4 & 240) >> 4))
	this._f_digit7 = true
	return this.digit7, nil
}
