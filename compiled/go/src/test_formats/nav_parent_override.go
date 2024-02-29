// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

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
func NewNavParentOverride() *NavParentOverride {
	return &NavParentOverride{
	}
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
	tmp2 := NewNavParentOverride_Child()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Child1 = tmp2
	tmp3 := NewNavParentOverride_Mediator()
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Mediator2 = tmp3
	return err
}
type NavParentOverride_Child struct {
	Data []byte
	_io *kaitai.Stream
	_root *NavParentOverride
	_parent *NavParentOverride
}
func NewNavParentOverride_Child() *NavParentOverride_Child {
	return &NavParentOverride_Child{
	}
}

func (this *NavParentOverride_Child) Read(io *kaitai.Stream, parent *NavParentOverride, root *NavParentOverride) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadBytes(int(this._parent.ChildSize))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this.Data = tmp4
	return err
}
type NavParentOverride_Mediator struct {
	Child2 *NavParentOverride_Child
	_io *kaitai.Stream
	_root *NavParentOverride
	_parent *NavParentOverride
}
func NewNavParentOverride_Mediator() *NavParentOverride_Mediator {
	return &NavParentOverride_Mediator{
	}
}

func (this *NavParentOverride_Mediator) Read(io *kaitai.Stream, parent *NavParentOverride, root *NavParentOverride) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5 := NewNavParentOverride_Child()
	err = tmp5.Read(this._io, this._parent, this._root)
	if err != nil {
		return err
	}
	this.Child2 = tmp5
	return err
}
