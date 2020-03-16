// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsCallExtraParens struct {
	Buf1 *ParamsCallExtraParens_MyStr1
	_io *kaitai.Stream
	_root *ParamsCallExtraParens
	_parent interface{}
}

func (this *ParamsCallExtraParens) Read(io *kaitai.Stream, parent interface{}, root *ParamsCallExtraParens) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(ParamsCallExtraParens_MyStr1)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Buf1 = tmp1
	return err
}
type ParamsCallExtraParens_MyStr1 struct {
	Body string
	_io *kaitai.Stream
	_root *ParamsCallExtraParens
	_parent *ParamsCallExtraParens
}

func (this *ParamsCallExtraParens_MyStr1) Read(io *kaitai.Stream, parent *ParamsCallExtraParens, root *ParamsCallExtraParens) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this.Body = string(tmp2)
	return err
}
