// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ValidShort struct {
	Magic1 []byte
	Uint8 uint8
	Sint8 int8
	MagicUint string
	Uint16 uint16
	Uint32 uint32
	Uint64 uint64
	MagicSint string
	Sint16 int16
	Sint32 int32
	Sint64 int64
	_io *kaitai.Stream
	_root *ValidShort
	_parent interface{}
}
func NewValidShort() *ValidShort {
	return &ValidShort{
	}
}

func (this *ValidShort) Read(io *kaitai.Stream, parent interface{}, root *ValidShort) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(6))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Magic1 = tmp1
	if !(bytes.Equal(this.Magic1, []uint8{80, 65, 67, 75, 45, 49})) {
		return kaitai.NewValidationNotEqualError([]uint8{80, 65, 67, 75, 45, 49}, this.Magic1, this._io, "/seq/0")
	}
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Uint8 = tmp2
	if !(this.Uint8 == 255) {
		return kaitai.NewValidationNotEqualError(255, this.Uint8, this._io, "/seq/1")
	}
	tmp3, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.Sint8 = tmp3
	if !(this.Sint8 == -1) {
		return kaitai.NewValidationNotEqualError(-1, this.Sint8, this._io, "/seq/2")
	}
	tmp4, err := this._io.ReadBytes(int(10))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this.MagicUint = string(tmp4)
	if !(this.MagicUint == "PACK-U-DEF") {
		return kaitai.NewValidationNotEqualError("PACK-U-DEF", this.MagicUint, this._io, "/seq/3")
	}
	tmp5, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16 = uint16(tmp5)
	if !(this.Uint16 == 65535) {
		return kaitai.NewValidationNotEqualError(65535, this.Uint16, this._io, "/seq/4")
	}
	tmp6, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32 = uint32(tmp6)
	if !(this.Uint32 == uint32(4294967295)) {
		return kaitai.NewValidationNotEqualError(uint32(4294967295), this.Uint32, this._io, "/seq/5")
	}
	tmp7, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64 = uint64(tmp7)
	if !(this.Uint64 == uint64(18446744073709551615)) {
		return kaitai.NewValidationNotEqualError(uint64(18446744073709551615), this.Uint64, this._io, "/seq/6")
	}
	tmp8, err := this._io.ReadBytes(int(10))
	if err != nil {
		return err
	}
	tmp8 = tmp8
	this.MagicSint = string(tmp8)
	if !(this.MagicSint == "PACK-S-DEF") {
		return kaitai.NewValidationNotEqualError("PACK-S-DEF", this.MagicSint, this._io, "/seq/7")
	}
	tmp9, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16 = int16(tmp9)
	if !(this.Sint16 == -1) {
		return kaitai.NewValidationNotEqualError(-1, this.Sint16, this._io, "/seq/8")
	}
	tmp10, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32 = int32(tmp10)
	if !(this.Sint32 == -1) {
		return kaitai.NewValidationNotEqualError(-1, this.Sint32, this._io, "/seq/9")
	}
	tmp11, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64 = int64(tmp11)
	if !(this.Sint64 == -1) {
		return kaitai.NewValidationNotEqualError(-1, this.Sint64, this._io, "/seq/10")
	}
	return err
}
