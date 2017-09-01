// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
type NestedSameName struct {
	MainData *NestedSameName_Main
	Dummy *NestedSameName_DummyObj
	_io *kaitai.Stream
	_root *NestedSameName
	_parent interface{}
}

func (this *NestedSameName) Read(io *kaitai.Stream, parent interface{}, root *NestedSameName) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(NestedSameName_Main)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.MainData = tmp1
	tmp2 := new(NestedSameName_DummyObj)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Dummy = tmp2
	return err
}
type NestedSameName_Main struct {
	MainSize int32
	Foo *NestedSameName_Main_FooObj
	_io *kaitai.Stream
	_root *NestedSameName
	_parent *NestedSameName
}

func (this *NestedSameName_Main) Read(io *kaitai.Stream, parent *NestedSameName, root *NestedSameName) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.MainSize = tmp3
	tmp4 := new(NestedSameName_Main_FooObj)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Foo = tmp4
	return err
}
type NestedSameName_Main_FooObj struct {
	Data []byte
	_io *kaitai.Stream
	_root *NestedSameName
	_parent *NestedSameName_Main
}

func (this *NestedSameName_Main_FooObj) Read(io *kaitai.Stream, parent *NestedSameName_Main, root *NestedSameName) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadBytes(int((this._parent.MainSize * 2)))
	if err != nil {
		return err
	}
	this.Data = tmp5
	return err
}
type NestedSameName_DummyObj struct {
	_io *kaitai.Stream
	_root *NestedSameName
	_parent *NestedSameName
}

func (this *NestedSameName_DummyObj) Read(io *kaitai.Stream, parent *NestedSameName, root *NestedSameName) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
type NestedSameName_DummyObj_Foo struct {
	_io *kaitai.Stream
	_root *NestedSameName
	_parent interface{}
}

func (this *NestedSameName_DummyObj_Foo) Read(io *kaitai.Stream, parent interface{}, root *NestedSameName) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
