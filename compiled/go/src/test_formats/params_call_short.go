// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsCallShort struct {
	Buf1 *ParamsCallShort_MyStr1
	Buf2 *ParamsCallShort_MyStr2
	_io *kaitai.Stream
	_root *ParamsCallShort
	_parent interface{}
}

func (this *ParamsCallShort) Read(io *kaitai.Stream, parent interface{}, root *ParamsCallShort) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(ParamsCallShort_MyStr1)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Buf1 = tmp1
	tmp2 := new(ParamsCallShort_MyStr2)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Buf2 = tmp2
	return err
}
type ParamsCallShort_MyStr1 struct {
	Body string
	_io *kaitai.Stream
	_root *ParamsCallShort
	_parent *ParamsCallShort
}

func (this *ParamsCallShort_MyStr1) Read(io *kaitai.Stream, parent *ParamsCallShort, root *ParamsCallShort) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
	this.Body = string(tmp3)
	return err
}
type ParamsCallShort_MyStr2 struct {
	Body string
	Trailer uint8
	_io *kaitai.Stream
	_root *ParamsCallShort
	_parent *ParamsCallShort
}

func (this *ParamsCallShort_MyStr2) Read(io *kaitai.Stream, parent *ParamsCallShort, root *ParamsCallShort) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
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
