// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NestedTypesImport struct {
	ACc *NestedTypes3_SubtypeA_SubtypeCc
	ACD *NestedTypes3_SubtypeA_SubtypeC_SubtypeD
	B *NestedTypes3_SubtypeB
	_io *kaitai.Stream
	_root *NestedTypesImport
	_parent interface{}
}
func NewNestedTypesImport() *NestedTypesImport {
	return &NestedTypesImport{
	}
}

func (this *NestedTypesImport) Read(io *kaitai.Stream, parent interface{}, root *NestedTypesImport) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewNestedTypes3_SubtypeA_SubtypeCc()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.ACc = tmp1
	tmp2 := NewNestedTypes3_SubtypeA_SubtypeC_SubtypeD()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.ACD = tmp2
	tmp3 := NewNestedTypes3_SubtypeB()
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.B = tmp3
	return err
}
