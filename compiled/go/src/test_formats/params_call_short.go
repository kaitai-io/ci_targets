// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsCallShort struct {
	Buf1 *ParamsCallShort_MyStr1
	Buf2 *ParamsCallShort_MyStr2
	_io *kaitai.Stream
	_root *ParamsCallShort
	_parent interface{}
}
func NewParamsCallShort() *ParamsCallShort {
	return &ParamsCallShort{
	}
}

func (this *ParamsCallShort) Read(io *kaitai.Stream, parent interface{}, root *ParamsCallShort) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewParamsCallShort_MyStr1(5)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Buf1 = tmp1
	tmp2 := NewParamsCallShort_MyStr2((2 + 3), true)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Buf2 = tmp2
	return err
}
type ParamsCallShort_MyStr1 struct {
	Body string
	Len uint32
	_io *kaitai.Stream
	_root *ParamsCallShort
	_parent *ParamsCallShort
}
func NewParamsCallShort_MyStr1(len uint32) *ParamsCallShort_MyStr1 {
	return &ParamsCallShort_MyStr1{
		Len: len,
	}
}

func (this *ParamsCallShort_MyStr1) Read(io *kaitai.Stream, parent *ParamsCallShort, root *ParamsCallShort) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.Body = string(tmp3)
	return err
}
type ParamsCallShort_MyStr2 struct {
	Body string
	Trailer uint8
	Len uint32
	HasTrailer bool
	_io *kaitai.Stream
	_root *ParamsCallShort
	_parent *ParamsCallShort
}
func NewParamsCallShort_MyStr2(len uint32, hasTrailer bool) *ParamsCallShort_MyStr2 {
	return &ParamsCallShort_MyStr2{
		Len: len,
		HasTrailer: hasTrailer,
	}
}

func (this *ParamsCallShort_MyStr2) Read(io *kaitai.Stream, parent *ParamsCallShort, root *ParamsCallShort) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this.Body = string(tmp4)
	if (this.HasTrailer) {
		tmp5, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Trailer = tmp5
	}
	return err
}
