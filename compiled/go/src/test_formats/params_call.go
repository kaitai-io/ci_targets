// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsCall struct {
	Buf1 *ParamsCall_MyStr1
	Buf2 *ParamsCall_MyStr2
	_io *kaitai.Stream
	_root *ParamsCall
	_parent kaitai.Struct
}
func NewParamsCall() *ParamsCall {
	return &ParamsCall{
	}
}

func (this ParamsCall) IO_() *kaitai.Stream {
	return this._io
}

func (this *ParamsCall) Read(io *kaitai.Stream, parent kaitai.Struct, root *ParamsCall) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewParamsCall_MyStr1(5)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Buf1 = tmp1
	tmp2 := NewParamsCall_MyStr2(2 + 3, true)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Buf2 = tmp2
	return err
}
type ParamsCall_MyStr1 struct {
	Body string
	Len uint32
	_io *kaitai.Stream
	_root *ParamsCall
	_parent *ParamsCall
}
func NewParamsCall_MyStr1(len uint32) *ParamsCall_MyStr1 {
	return &ParamsCall_MyStr1{
		Len: len,
	}
}

func (this ParamsCall_MyStr1) IO_() *kaitai.Stream {
	return this._io
}

func (this *ParamsCall_MyStr1) Read(io *kaitai.Stream, parent *ParamsCall, root *ParamsCall) (err error) {
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
type ParamsCall_MyStr2 struct {
	Body string
	Trailer uint8
	Len uint32
	HasTrailer bool
	_io *kaitai.Stream
	_root *ParamsCall
	_parent *ParamsCall
}
func NewParamsCall_MyStr2(len uint32, hasTrailer bool) *ParamsCall_MyStr2 {
	return &ParamsCall_MyStr2{
		Len: len,
		HasTrailer: hasTrailer,
	}
}

func (this ParamsCall_MyStr2) IO_() *kaitai.Stream {
	return this._io
}

func (this *ParamsCall_MyStr2) Read(io *kaitai.Stream, parent *ParamsCall, root *ParamsCall) (err error) {
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
