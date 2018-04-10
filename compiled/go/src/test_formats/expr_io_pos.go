// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ExprIoPos struct {
	Substream1 *ExprIoPos_AllPlusNumber
	Substream2 *ExprIoPos_AllPlusNumber
	_io *kaitai.Stream
	_root *ExprIoPos
	_parent interface{}
	_raw_Substream1 []byte
	_raw_Substream2 []byte
}

func (this *ExprIoPos) Read(io *kaitai.Stream, parent interface{}, root *ExprIoPos) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(16))
	if err != nil {
		return err
	}
	this._raw_Substream1 = tmp1
	_io__raw_Substream1 := kaitai.NewStream(bytes.NewReader(this._raw_Substream1))
	tmp2 := new(ExprIoPos_AllPlusNumber)
	err = tmp2.Read(_io__raw_Substream1, this, this._root)
	if err != nil {
		return err
	}
	this.Substream1 = tmp2
	tmp3, err := this._io.ReadBytes(int(14))
	if err != nil {
		return err
	}
	this._raw_Substream2 = tmp3
	_io__raw_Substream2 := kaitai.NewStream(bytes.NewReader(this._raw_Substream2))
	tmp4 := new(ExprIoPos_AllPlusNumber)
	err = tmp4.Read(_io__raw_Substream2, this, this._root)
	if err != nil {
		return err
	}
	this.Substream2 = tmp4
	return err
}
type ExprIoPos_AllPlusNumber struct {
	MyStr string
	Body []byte
	Number uint16
	_io *kaitai.Stream
	_root *ExprIoPos
	_parent *ExprIoPos
}

func (this *ExprIoPos_AllPlusNumber) Read(io *kaitai.Stream, parent *ExprIoPos, root *ExprIoPos) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadBytesTerm(0, false, true, true)
	if err != nil {
		return err
	}
	this.MyStr = string(tmp5)
	tmp6, err := this._io.Size()
	if err != nil {
		return err
	}
	tmp7, err := this._io.Pos()
	if err != nil {
		return err
	}
	tmp8, err := this._io.ReadBytes(int(((tmp6 - tmp7) - 2)))
	if err != nil {
		return err
	}
	this.Body = tmp8
	tmp9, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Number = tmp9
	return err
}
