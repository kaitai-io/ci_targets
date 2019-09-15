// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NavParentSwitch struct {
	Category uint8
	Content *NavParentSwitch_Element1
	_io *kaitai.Stream
	_root *NavParentSwitch
	_parent interface{}
}

func (this *NavParentSwitch) Read(io *kaitai.Stream, parent interface{}, root *NavParentSwitch) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Category = tmp1
	switch (this.Category) {
	case 1:
		tmp2 := new(NavParentSwitch_Element1)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Content = tmp2
	}
	return err
}
type NavParentSwitch_Element1 struct {
	Foo uint8
	Subelement *NavParentSwitch_Subelement1
	_io *kaitai.Stream
	_root *NavParentSwitch
	_parent *NavParentSwitch
}

func (this *NavParentSwitch_Element1) Read(io *kaitai.Stream, parent *NavParentSwitch, root *NavParentSwitch) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Foo = tmp3
	tmp4 := new(NavParentSwitch_Subelement1)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Subelement = tmp4
	return err
}
type NavParentSwitch_Subelement1 struct {
	Bar uint8
	_io *kaitai.Stream
	_root *NavParentSwitch
	_parent *NavParentSwitch_Element1
}

func (this *NavParentSwitch_Subelement1) Read(io *kaitai.Stream, parent *NavParentSwitch_Element1, root *NavParentSwitch) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	if (this._parent.Foo == 66) {
		tmp5, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Bar = tmp5
	}
	return err
}
