// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
type BitsByteAligned struct {
	One uint64
	Byte1 uint8
	Two uint64
	Three bool
	Byte2 uint8
	Four uint64
	Byte3 []byte
	FullByte uint64
	Byte4 uint8
	_io *kaitai.Stream
	_root *BitsByteAligned
	_parent interface{}
}

func (this *BitsByteAligned) Read(io *kaitai.Stream, parent interface{}, root *BitsByteAligned) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsInt(6)
	if err != nil {
		return err
	}
	this.One = tmp1
	this._io.AlignToByte()
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Byte1 = tmp2
	tmp3, err := this._io.ReadBitsInt(3)
	if err != nil {
		return err
	}
	this.Two = tmp3
	tmp4, err := this._io.ReadBitsInt(1) != 0
	if err != nil {
		return err
	}
	this.Three = tmp4
	this._io.AlignToByte()
	tmp5, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Byte2 = tmp5
	tmp6, err := this._io.ReadBitsInt(14)
	if err != nil {
		return err
	}
	this.Four = tmp6
	this._io.AlignToByte()
	tmp7, err := this._io.ReadBytes(int(1))
	if err != nil {
		return err
	}
	this.Byte3 = tmp7
	tmp8, err := this._io.ReadBitsInt(8)
	if err != nil {
		return err
	}
	this.FullByte = tmp8
	this._io.AlignToByte()
	tmp9, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Byte4 = tmp9
	return err
}
