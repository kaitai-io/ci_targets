// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type IntegersMinMax struct {
	UnsignedMin *IntegersMinMax_Unsigned
	UnsignedMax *IntegersMinMax_Unsigned
	SignedMin *IntegersMinMax_Signed
	SignedMax *IntegersMinMax_Signed
	_io *kaitai.Stream
	_root *IntegersMinMax
	_parent interface{}
}
func NewIntegersMinMax() *IntegersMinMax {
	return &IntegersMinMax{
	}
}

func (this *IntegersMinMax) Read(io *kaitai.Stream, parent interface{}, root *IntegersMinMax) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewIntegersMinMax_Unsigned()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.UnsignedMin = tmp1
	tmp2 := NewIntegersMinMax_Unsigned()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.UnsignedMax = tmp2
	tmp3 := NewIntegersMinMax_Signed()
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.SignedMin = tmp3
	tmp4 := NewIntegersMinMax_Signed()
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.SignedMax = tmp4
	return err
}
type IntegersMinMax_Unsigned struct {
	U1 uint8
	U2le uint16
	U4le uint32
	U8le uint64
	U2be uint16
	U4be uint32
	U8be uint64
	_io *kaitai.Stream
	_root *IntegersMinMax
	_parent *IntegersMinMax
}
func NewIntegersMinMax_Unsigned() *IntegersMinMax_Unsigned {
	return &IntegersMinMax_Unsigned{
	}
}

func (this *IntegersMinMax_Unsigned) Read(io *kaitai.Stream, parent *IntegersMinMax, root *IntegersMinMax) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.U1 = tmp5
	tmp6, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.U2le = uint16(tmp6)
	tmp7, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.U4le = uint32(tmp7)
	tmp8, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.U8le = uint64(tmp8)
	tmp9, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.U2be = uint16(tmp9)
	tmp10, err := this._io.ReadU4be()
	if err != nil {
		return err
	}
	this.U4be = uint32(tmp10)
	tmp11, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.U8be = uint64(tmp11)
	return err
}
type IntegersMinMax_Signed struct {
	S1 int8
	S2le int16
	S4le int32
	S8le int64
	S2be int16
	S4be int32
	S8be int64
	_io *kaitai.Stream
	_root *IntegersMinMax
	_parent *IntegersMinMax
}
func NewIntegersMinMax_Signed() *IntegersMinMax_Signed {
	return &IntegersMinMax_Signed{
	}
}

func (this *IntegersMinMax_Signed) Read(io *kaitai.Stream, parent *IntegersMinMax, root *IntegersMinMax) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp12, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.S1 = tmp12
	tmp13, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.S2le = int16(tmp13)
	tmp14, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.S4le = int32(tmp14)
	tmp15, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.S8le = int64(tmp15)
	tmp16, err := this._io.ReadS2be()
	if err != nil {
		return err
	}
	this.S2be = int16(tmp16)
	tmp17, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.S4be = int32(tmp17)
	tmp18, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.S8be = int64(tmp18)
	return err
}
