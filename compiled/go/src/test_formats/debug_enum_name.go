// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type DebugEnumName_TestEnum1 int
const (
	DebugEnumName_TestEnum1__EnumValue80 DebugEnumName_TestEnum1 = 80
)
var values_DebugEnumName_TestEnum1 = map[DebugEnumName_TestEnum1]struct{}{80: {}}
func (v DebugEnumName_TestEnum1) isDefined() bool {
	_, ok := values_DebugEnumName_TestEnum1[v]
	return ok
}

type DebugEnumName_TestEnum2 int
const (
	DebugEnumName_TestEnum2__EnumValue65 DebugEnumName_TestEnum2 = 65
)
var values_DebugEnumName_TestEnum2 = map[DebugEnumName_TestEnum2]struct{}{65: {}}
func (v DebugEnumName_TestEnum2) isDefined() bool {
	_, ok := values_DebugEnumName_TestEnum2[v]
	return ok
}
type DebugEnumName struct {
	One DebugEnumName_TestEnum1
	ArrayOfInts []DebugEnumName_TestEnum2
	TestType *DebugEnumName_TestSubtype
	_io *kaitai.Stream
	_root *DebugEnumName
	_parent kaitai.Struct
}
func NewDebugEnumName() *DebugEnumName {
	return &DebugEnumName{
	}
}

func (this DebugEnumName) IO_() *kaitai.Stream {
	return this._io
}

func (this *DebugEnumName) Read(io *kaitai.Stream, parent kaitai.Struct, root *DebugEnumName) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = DebugEnumName_TestEnum1(tmp1)
	for i := 0; i < int(1); i++ {
		_ = i
		tmp2, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.ArrayOfInts = append(this.ArrayOfInts, DebugEnumName_TestEnum2(tmp2))
	}
	tmp3 := NewDebugEnumName_TestSubtype()
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.TestType = tmp3
	return err
}

type DebugEnumName_TestSubtype_InnerEnum1 int
const (
	DebugEnumName_TestSubtype_InnerEnum1__EnumValue67 DebugEnumName_TestSubtype_InnerEnum1 = 67
)
var values_DebugEnumName_TestSubtype_InnerEnum1 = map[DebugEnumName_TestSubtype_InnerEnum1]struct{}{67: {}}
func (v DebugEnumName_TestSubtype_InnerEnum1) isDefined() bool {
	_, ok := values_DebugEnumName_TestSubtype_InnerEnum1[v]
	return ok
}

type DebugEnumName_TestSubtype_InnerEnum2 int
const (
	DebugEnumName_TestSubtype_InnerEnum2__EnumValue11 DebugEnumName_TestSubtype_InnerEnum2 = 11
)
var values_DebugEnumName_TestSubtype_InnerEnum2 = map[DebugEnumName_TestSubtype_InnerEnum2]struct{}{11: {}}
func (v DebugEnumName_TestSubtype_InnerEnum2) isDefined() bool {
	_, ok := values_DebugEnumName_TestSubtype_InnerEnum2[v]
	return ok
}
type DebugEnumName_TestSubtype struct {
	Field1 DebugEnumName_TestSubtype_InnerEnum1
	Field2 uint8
	_io *kaitai.Stream
	_root *DebugEnumName
	_parent *DebugEnumName
	_f_instanceField bool
	instanceField DebugEnumName_TestSubtype_InnerEnum2
}
func NewDebugEnumName_TestSubtype() *DebugEnumName_TestSubtype {
	return &DebugEnumName_TestSubtype{
	}
}

func (this DebugEnumName_TestSubtype) IO_() *kaitai.Stream {
	return this._io
}

func (this *DebugEnumName_TestSubtype) Read(io *kaitai.Stream, parent *DebugEnumName, root *DebugEnumName) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Field1 = DebugEnumName_TestSubtype_InnerEnum1(tmp4)
	tmp5, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Field2 = tmp5
	return err
}
func (this *DebugEnumName_TestSubtype) InstanceField() (v DebugEnumName_TestSubtype_InnerEnum2, err error) {
	if (this._f_instanceField) {
		return this.instanceField, nil
	}
	this._f_instanceField = true
	this.instanceField = DebugEnumName_TestSubtype_InnerEnum2(DebugEnumName_TestSubtype_InnerEnum2(this.Field2 & 15))
	return this.instanceField, nil
}
