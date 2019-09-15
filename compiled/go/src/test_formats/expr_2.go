// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"unicode/utf8"
	"bytes"
	"io"
)

type Expr2 struct {
	Str1 *Expr2_ModStr
	Str2 *Expr2_ModStr
	_io *kaitai.Stream
	_root *Expr2
	_parent interface{}
	_f_str1LenMod bool
	str1LenMod int
	_f_str1Len bool
	str1Len int
	_f_str1Tuple5 bool
	str1Tuple5 *Expr2_Tuple
	_f_str2Tuple5 bool
	str2Tuple5 *Expr2_Tuple
	_f_str1Avg bool
	str1Avg int
	_f_str1Byte1 bool
	str1Byte1 uint8
	_f_str1Char5 bool
	str1Char5 string
}

func (this *Expr2) Read(io *kaitai.Stream, parent interface{}, root *Expr2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(Expr2_ModStr)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Str1 = tmp1
	tmp2 := new(Expr2_ModStr)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Str2 = tmp2
	return err
}
func (this *Expr2) Str1LenMod() (v int, err error) {
	if (this._f_str1LenMod) {
		return this.str1LenMod, nil
	}
	tmp3, err := this.Str1.LenMod()
	if err != nil {
		return 0, err
	}
	this.str1LenMod = int(tmp3)
	this._f_str1LenMod = true
	return this.str1LenMod, nil
}
func (this *Expr2) Str1Len() (v int, err error) {
	if (this._f_str1Len) {
		return this.str1Len, nil
	}
	this.str1Len = int(utf8.RuneCountInString(this.Str1.Str))
	this._f_str1Len = true
	return this.str1Len, nil
}
func (this *Expr2) Str1Tuple5() (v *Expr2_Tuple, err error) {
	if (this._f_str1Tuple5) {
		return this.str1Tuple5, nil
	}
	tmp4, err := this.Str1.Tuple5()
	if err != nil {
		return nil, err
	}
	this.str1Tuple5 = tmp4
	this._f_str1Tuple5 = true
	return this.str1Tuple5, nil
}
func (this *Expr2) Str2Tuple5() (v *Expr2_Tuple, err error) {
	if (this._f_str2Tuple5) {
		return this.str2Tuple5, nil
	}
	tmp5, err := this.Str2.Tuple5()
	if err != nil {
		return nil, err
	}
	this.str2Tuple5 = tmp5
	this._f_str2Tuple5 = true
	return this.str2Tuple5, nil
}
func (this *Expr2) Str1Avg() (v int, err error) {
	if (this._f_str1Avg) {
		return this.str1Avg, nil
	}
	tmp6, err := this.Str1.Rest.Avg()
	if err != nil {
		return 0, err
	}
	this.str1Avg = int(tmp6)
	this._f_str1Avg = true
	return this.str1Avg, nil
}
func (this *Expr2) Str1Byte1() (v uint8, err error) {
	if (this._f_str1Byte1) {
		return this.str1Byte1, nil
	}
	this.str1Byte1 = uint8(this.Str1.Rest.Byte1)
	this._f_str1Byte1 = true
	return this.str1Byte1, nil
}
func (this *Expr2) Str1Char5() (v string, err error) {
	if (this._f_str1Char5) {
		return this.str1Char5, nil
	}
	tmp7, err := this.Str1.Char5()
	if err != nil {
		return "", err
	}
	this.str1Char5 = string(tmp7)
	this._f_str1Char5 = true
	return this.str1Char5, nil
}
type Expr2_ModStr struct {
	LenOrig uint16
	Str string
	Rest *Expr2_Tuple
	_io *kaitai.Stream
	_root *Expr2
	_parent *Expr2
	_raw_Rest []byte
	_f_lenMod bool
	lenMod int
	_f_char5 bool
	char5 string
	_f_tuple5 bool
	tuple5 *Expr2_Tuple
}

func (this *Expr2_ModStr) Read(io *kaitai.Stream, parent *Expr2, root *Expr2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp8, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOrig = uint16(tmp8)
	tmp9, err := this.LenMod()
	if err != nil {
		return err
	}
	tmp10, err := this._io.ReadBytes(int(tmp9))
	if err != nil {
		return err
	}
	this.Str = string(tmp10)
	tmp11, err := this._io.ReadBytes(int(3))
	if err != nil {
		return err
	}
	this._raw_Rest = tmp11
	_io__raw_Rest := kaitai.NewStream(bytes.NewReader(this._raw_Rest))
	tmp12 := new(Expr2_Tuple)
	err = tmp12.Read(_io__raw_Rest, this, this._root)
	if err != nil {
		return err
	}
	this.Rest = tmp12
	return err
}
func (this *Expr2_ModStr) LenMod() (v int, err error) {
	if (this._f_lenMod) {
		return this.lenMod, nil
	}
	this.lenMod = int((this.LenOrig - 3))
	this._f_lenMod = true
	return this.lenMod, nil
}
func (this *Expr2_ModStr) Char5() (v string, err error) {
	if (this._f_char5) {
		return this.char5, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return "", err
	}
	_, err = this._io.Seek(int64(5), io.SeekStart)
	if err != nil {
		return "", err
	}
	tmp13, err := this._io.ReadBytes(int(1))
	if err != nil {
		return "", err
	}
	this.char5 = string(tmp13)
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return "", err
	}
	this._f_char5 = true
	return this.char5, nil
}
func (this *Expr2_ModStr) Tuple5() (v *Expr2_Tuple, err error) {
	if (this._f_tuple5) {
		return this.tuple5, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64(5), io.SeekStart)
	if err != nil {
		return nil, err
	}
	tmp14 := new(Expr2_Tuple)
	err = tmp14.Read(this._io, this, this._root)
	if err != nil {
		return nil, err
	}
	this.tuple5 = tmp14
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_tuple5 = true
	return this.tuple5, nil
}
type Expr2_Tuple struct {
	Byte0 uint8
	Byte1 uint8
	Byte2 uint8
	_io *kaitai.Stream
	_root *Expr2
	_parent *Expr2_ModStr
	_f_avg bool
	avg int
}

func (this *Expr2_Tuple) Read(io *kaitai.Stream, parent *Expr2_ModStr, root *Expr2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp15, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Byte0 = tmp15
	tmp16, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Byte1 = tmp16
	tmp17, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Byte2 = tmp17
	return err
}
func (this *Expr2_Tuple) Avg() (v int, err error) {
	if (this._f_avg) {
		return this.avg, nil
	}
	this.avg = int(((this.Byte1 + this.Byte2) / 2))
	this._f_avg = true
	return this.avg, nil
}
