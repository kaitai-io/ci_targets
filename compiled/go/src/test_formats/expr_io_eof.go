// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ExprIoEof struct {
	Substream1 *ExprIoEof_OneOrTwo
	Substream2 *ExprIoEof_OneOrTwo
	_io *kaitai.Stream
	_root *ExprIoEof
	_parent interface{}
	_raw_Substream1 []byte
	_raw_Substream2 []byte
}

func (this *ExprIoEof) Read(io *kaitai.Stream, parent interface{}, root *ExprIoEof) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this._raw_Substream1 = tmp1
	_io__raw_Substream1 := kaitai.NewStream(bytes.NewReader(this._raw_Substream1))
	tmp2 := new(ExprIoEof_OneOrTwo)
	err = tmp2.Read(_io__raw_Substream1, this, this._root)
	if err != nil {
		return err
	}
	this.Substream1 = tmp2
	tmp3, err := this._io.ReadBytes(int(8))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this._raw_Substream2 = tmp3
	_io__raw_Substream2 := kaitai.NewStream(bytes.NewReader(this._raw_Substream2))
	tmp4 := new(ExprIoEof_OneOrTwo)
	err = tmp4.Read(_io__raw_Substream2, this, this._root)
	if err != nil {
		return err
	}
	this.Substream2 = tmp4
	return err
}
type ExprIoEof_OneOrTwo struct {
	One uint32
	Two uint32
	_io *kaitai.Stream
	_root *ExprIoEof
	_parent *ExprIoEof
	_f_reflectEof bool
	reflectEof bool
}

func (this *ExprIoEof_OneOrTwo) Read(io *kaitai.Stream, parent *ExprIoEof, root *ExprIoEof) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.One = uint32(tmp5)
	tmp6, err := this._io.EOF()
	if err != nil {
		return err
	}
	if (!(tmp6)) {
		tmp7, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Two = uint32(tmp7)
	}
	return err
}
func (this *ExprIoEof_OneOrTwo) ReflectEof() (v bool, err error) {
	if (this._f_reflectEof) {
		return this.reflectEof, nil
	}
	tmp8, err := this._io.EOF()
	if err != nil {
		return false, err
	}
	this.reflectEof = bool(tmp8)
	this._f_reflectEof = true
	return this.reflectEof, nil
}
