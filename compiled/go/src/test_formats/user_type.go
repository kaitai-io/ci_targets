// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
type UserType struct {
	One *UserType_Header
	_io *kaitai.Stream
	_root *UserType
	_parent interface{}
}

func (this *UserType) Read(io *kaitai.Stream, parent interface{}, root *UserType) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(UserType_Header)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
type UserType_Header struct {
	Width uint32
	Height uint32
	_io *kaitai.Stream
	_root *UserType
	_parent *UserType
}

func (this *UserType_Header) Read(io *kaitai.Stream, parent *UserType, root *UserType) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Width = tmp2
	tmp3, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Height = tmp3
	return err
}
