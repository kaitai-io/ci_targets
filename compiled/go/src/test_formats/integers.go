// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
	"errors"
)

type Integers struct {
	Magic1 []byte
	Uint8 uint8
	Sint8 int8
	MagicUint []byte
	Uint16 uint16
	Uint32 uint32
	Uint64 uint64
	MagicSint []byte
	Sint16 int16
	Sint32 int32
	Sint64 int64
	MagicUintLe []byte
	Uint16le uint16
	Uint32le uint32
	Uint64le uint64
	MagicSintLe []byte
	Sint16le int16
	Sint32le int32
	Sint64le int64
	MagicUintBe []byte
	Uint16be uint16
	Uint32be uint32
	Uint64be uint64
	MagicSintBe []byte
	Sint16be int16
	Sint32be int32
	Sint64be int64
	_io *kaitai.Stream
	_root *Integers
	_parent interface{}
}

func (this *Integers) Read(io *kaitai.Stream, parent interface{}, root *Integers) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.Magic1, err = this._io.ReadBytes(6)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.Magic1, []uint8{80, 65, 67, 75, 45, 49}) {
		return errors.New("Unexpected fixed contents")
	}
	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Uint8 = tmp1
	tmp2, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.Sint8 = tmp2
	this.MagicUint, err = this._io.ReadBytes(10)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.MagicUint, []uint8{80, 65, 67, 75, 45, 85, 45, 68, 69, 70}) {
		return errors.New("Unexpected fixed contents")
	}
	tmp3, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16 = tmp3
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32 = tmp4
	tmp5, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64 = tmp5
	this.MagicSint, err = this._io.ReadBytes(10)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.MagicSint, []uint8{80, 65, 67, 75, 45, 83, 45, 68, 69, 70}) {
		return errors.New("Unexpected fixed contents")
	}
	tmp6, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16 = tmp6
	tmp7, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32 = tmp7
	tmp8, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64 = tmp8
	this.MagicUintLe, err = this._io.ReadBytes(9)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.MagicUintLe, []uint8{80, 65, 67, 75, 45, 85, 45, 76, 69}) {
		return errors.New("Unexpected fixed contents")
	}
	tmp9, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16le = tmp9
	tmp10, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32le = tmp10
	tmp11, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64le = tmp11
	this.MagicSintLe, err = this._io.ReadBytes(9)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.MagicSintLe, []uint8{80, 65, 67, 75, 45, 83, 45, 76, 69}) {
		return errors.New("Unexpected fixed contents")
	}
	tmp12, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16le = tmp12
	tmp13, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32le = tmp13
	tmp14, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64le = tmp14
	this.MagicUintBe, err = this._io.ReadBytes(9)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.MagicUintBe, []uint8{80, 65, 67, 75, 45, 85, 45, 66, 69}) {
		return errors.New("Unexpected fixed contents")
	}
	tmp15, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.Uint16be = tmp15
	tmp16, err := this._io.ReadU4be()
	if err != nil {
		return err
	}
	this.Uint32be = tmp16
	tmp17, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.Uint64be = tmp17
	this.MagicSintBe, err = this._io.ReadBytes(9)
	if err != nil {
		return err
	}
	if !bytes.Equal(this.MagicSintBe, []uint8{80, 65, 67, 75, 45, 83, 45, 66, 69}) {
		return errors.New("Unexpected fixed contents")
	}
	tmp18, err := this._io.ReadS2be()
	if err != nil {
		return err
	}
	this.Sint16be = tmp18
	tmp19, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.Sint32be = tmp19
	tmp20, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.Sint64be = tmp20
	return err
}
