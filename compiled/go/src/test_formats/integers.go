// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

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
func NewIntegers() *Integers {
	return &Integers{
	}
}

func (this *Integers) Read(io *kaitai.Stream, parent interface{}, root *Integers) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(6))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Magic1 = tmp1
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Uint8 = tmp2
	tmp3, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.Sint8 = tmp3
	tmp4, err := this._io.ReadBytes(int(10))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this.MagicUint = tmp4
	tmp5, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16 = uint16(tmp5)
	tmp6, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32 = uint32(tmp6)
	tmp7, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64 = uint64(tmp7)
	tmp8, err := this._io.ReadBytes(int(10))
	if err != nil {
		return err
	}
	tmp8 = tmp8
	this.MagicSint = tmp8
	tmp9, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16 = int16(tmp9)
	tmp10, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32 = int32(tmp10)
	tmp11, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64 = int64(tmp11)
	tmp12, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	tmp12 = tmp12
	this.MagicUintLe = tmp12
	tmp13, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Uint16le = uint16(tmp13)
	tmp14, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Uint32le = uint32(tmp14)
	tmp15, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Uint64le = uint64(tmp15)
	tmp16, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	tmp16 = tmp16
	this.MagicSintLe = tmp16
	tmp17, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Sint16le = int16(tmp17)
	tmp18, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Sint32le = int32(tmp18)
	tmp19, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.Sint64le = int64(tmp19)
	tmp20, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	tmp20 = tmp20
	this.MagicUintBe = tmp20
	tmp21, err := this._io.ReadU2be()
	if err != nil {
		return err
	}
	this.Uint16be = uint16(tmp21)
	tmp22, err := this._io.ReadU4be()
	if err != nil {
		return err
	}
	this.Uint32be = uint32(tmp22)
	tmp23, err := this._io.ReadU8be()
	if err != nil {
		return err
	}
	this.Uint64be = uint64(tmp23)
	tmp24, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	tmp24 = tmp24
	this.MagicSintBe = tmp24
	tmp25, err := this._io.ReadS2be()
	if err != nil {
		return err
	}
	this.Sint16be = int16(tmp25)
	tmp26, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.Sint32be = int32(tmp26)
	tmp27, err := this._io.ReadS8be()
	if err != nil {
		return err
	}
	this.Sint64be = int64(tmp27)
	return err
}
