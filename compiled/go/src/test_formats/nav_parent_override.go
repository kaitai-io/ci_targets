// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NavParentOverride struct {
	ChildSize uint8
	Child1 *NavParentOverride_Child
	Mediator2 *NavParentOverride_Mediator
	_io *kaitai.Stream
	_root *NavParentOverride
	_parent interface{}
}

func (this *NavParentOverride) Read(io *kaitai.Stream, parent interface{}, root *NavParentOverride) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.ChildSize = tmp1
	tmp2 := new(NavParentOverride_Child)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Child1 = tmp2
	tmp3 := new(NavParentOverride_Mediator)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Mediator2 = tmp3
	return err
}
type NavParentOverride_Mediator struct {
	Child2 *NavParentOverride_Child
	_io *kaitai.Stream
	_root *NavParentOverride
	_parent *NavParentOverride
}

func (this *NavParentOverride_Mediator) Read(io *kaitai.Stream, parent *NavParentOverride, root *NavParentOverride) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4 := new(NavParentOverride_Child)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Child2 = tmp4
	return err
}
type NavParentOverride_Child struct {
	Data []byte
	_io *kaitai.Stream
	_root *NavParentOverride
	_parent *NavParentOverride
}

func (this *NavParentOverride_Child) Read(io *kaitai.Stream, parent *NavParentOverride, root *NavParentOverride) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadBytes(int(this._parent.ChildSize))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this.Data = tmp5
	return err
}
