// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
import "io"
import "golang.org/x/text/encoding/charmap"
import "golang.org/x/text/encoding/traditionalchinese"
import "golang.org/x/text/encoding/japanese"

var _ = io.SeekStart
var _ = charmap.CodePage437
var _ = japanese.ShiftJIS
var _ = traditionalchinese.Big5

type FloatingPoints struct {
	SingleValue float32
	DoubleValue float64
	SingleValueBe float32
	DoubleValueBe float64
	ApproximateValue float32
	_io *kaitai.Stream
	_root *FloatingPoints
	_parent interface{}
	_f_singleValuePlusInt bool
	singleValuePlusInt float64
	_f_singleValuePlusFloat bool
	singleValuePlusFloat float64
	_f_doubleValuePlusFloat bool
	doubleValuePlusFloat float64
}

func (this *FloatingPoints) Read(io *kaitai.Stream, parent interface{}, root *FloatingPoints) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadF4le()
	if err != nil {
		return err
	}
	this.SingleValue = tmp1
	tmp2, err := this._io.ReadF8le()
	if err != nil {
		return err
	}
	this.DoubleValue = tmp2
	tmp3, err := this._io.ReadF4be()
	if err != nil {
		return err
	}
	this.SingleValueBe = tmp3
	tmp4, err := this._io.ReadF8be()
	if err != nil {
		return err
	}
	this.DoubleValueBe = tmp4
	tmp5, err := this._io.ReadF4le()
	if err != nil {
		return err
	}
	this.ApproximateValue = tmp5
	return err
}
func (this *FloatingPoints) SingleValuePlusInt() (v float64, err error) {
	if (this._f_singleValuePlusInt) {
		return this.singleValuePlusInt, nil
	}
	this.singleValuePlusInt = float64((this.SingleValue + 1))
	this._f_singleValuePlusInt = true
	return this.singleValuePlusInt, nil
}
func (this *FloatingPoints) SingleValuePlusFloat() (v float64, err error) {
	if (this._f_singleValuePlusFloat) {
		return this.singleValuePlusFloat, nil
	}
	this.singleValuePlusFloat = float64((this.SingleValue + 0.5))
	this._f_singleValuePlusFloat = true
	return this.singleValuePlusFloat, nil
}
func (this *FloatingPoints) DoubleValuePlusFloat() (v float64, err error) {
	if (this._f_doubleValuePlusFloat) {
		return this.doubleValuePlusFloat, nil
	}
	this.doubleValuePlusFloat = float64((this.DoubleValue + 0.05))
	this._f_doubleValuePlusFloat = true
	return this.doubleValuePlusFloat, nil
}
