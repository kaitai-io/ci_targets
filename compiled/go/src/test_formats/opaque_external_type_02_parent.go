// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type OpaqueExternalType02Parent struct {
	Parent *OpaqueExternalType02Parent_ParentObj
	_io *kaitai.Stream
	_root *OpaqueExternalType02Parent
	_parent kaitai.Struct
}
func NewOpaqueExternalType02Parent() *OpaqueExternalType02Parent {
	return &OpaqueExternalType02Parent{
	}
}

func (this OpaqueExternalType02Parent) IO_() *kaitai.Stream {
	return this._io
}

func (this *OpaqueExternalType02Parent) Read(io *kaitai.Stream, parent kaitai.Struct, root *OpaqueExternalType02Parent) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewOpaqueExternalType02Parent_ParentObj()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Parent = tmp1
	return err
}
type OpaqueExternalType02Parent_ParentObj struct {
	Child *OpaqueExternalType02Child
	_io *kaitai.Stream
	_root *OpaqueExternalType02Parent
	_parent *OpaqueExternalType02Parent
}
func NewOpaqueExternalType02Parent_ParentObj() *OpaqueExternalType02Parent_ParentObj {
	return &OpaqueExternalType02Parent_ParentObj{
	}
}

func (this OpaqueExternalType02Parent_ParentObj) IO_() *kaitai.Stream {
	return this._io
}

func (this *OpaqueExternalType02Parent_ParentObj) Read(io *kaitai.Stream, parent *OpaqueExternalType02Parent, root *OpaqueExternalType02Parent) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2 := NewOpaqueExternalType02Child()
	err = tmp2.Read(this._io, nil, nil)
	if err != nil {
		return err
	}
	this.Child = tmp2
	return err
}
