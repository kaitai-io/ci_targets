// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ProcessCoerceUsertype1 struct {
	Records []*ProcessCoerceUsertype1_Record
	_io *kaitai.Stream
	_root *ProcessCoerceUsertype1
	_parent kaitai.Struct
}
func NewProcessCoerceUsertype1() *ProcessCoerceUsertype1 {
	return &ProcessCoerceUsertype1{
	}
}

func (this ProcessCoerceUsertype1) IO_() *kaitai.Stream {
	return this._io
}

func (this *ProcessCoerceUsertype1) Read(io *kaitai.Stream, parent kaitai.Struct, root *ProcessCoerceUsertype1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 0; i < int(2); i++ {
		_ = i
		tmp1 := NewProcessCoerceUsertype1_Record()
		err = tmp1.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Records = append(this.Records, tmp1)
	}
	return err
}
type ProcessCoerceUsertype1_Foo struct {
	Value uint32
	_io *kaitai.Stream
	_root *ProcessCoerceUsertype1
	_parent *ProcessCoerceUsertype1_Record
}
func NewProcessCoerceUsertype1_Foo() *ProcessCoerceUsertype1_Foo {
	return &ProcessCoerceUsertype1_Foo{
	}
}

func (this ProcessCoerceUsertype1_Foo) IO_() *kaitai.Stream {
	return this._io
}

func (this *ProcessCoerceUsertype1_Foo) Read(io *kaitai.Stream, parent *ProcessCoerceUsertype1_Record, root *ProcessCoerceUsertype1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Value = uint32(tmp2)
	return err
}
type ProcessCoerceUsertype1_Record struct {
	Flag uint8
	BufUnproc *ProcessCoerceUsertype1_Foo
	BufProc *ProcessCoerceUsertype1_Foo
	_io *kaitai.Stream
	_root *ProcessCoerceUsertype1
	_parent *ProcessCoerceUsertype1
	_raw_BufUnproc []byte
	_raw_BufProc []byte
	_raw__raw_BufProc []byte
	_f_buf bool
	buf *ProcessCoerceUsertype1_Foo
}
func NewProcessCoerceUsertype1_Record() *ProcessCoerceUsertype1_Record {
	return &ProcessCoerceUsertype1_Record{
	}
}

func (this ProcessCoerceUsertype1_Record) IO_() *kaitai.Stream {
	return this._io
}

func (this *ProcessCoerceUsertype1_Record) Read(io *kaitai.Stream, parent *ProcessCoerceUsertype1, root *ProcessCoerceUsertype1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Flag = tmp3
	if (this.Flag == 0) {
		tmp4, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		tmp4 = tmp4
		this._raw_BufUnproc = tmp4
		_io__raw_BufUnproc := kaitai.NewStream(bytes.NewReader(this._raw_BufUnproc))
		tmp5 := NewProcessCoerceUsertype1_Foo()
		err = tmp5.Read(_io__raw_BufUnproc, this, this._root)
		if err != nil {
			return err
		}
		this.BufUnproc = tmp5
	}
	if (this.Flag != 0) {
		tmp6, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		tmp6 = tmp6
		this._raw__raw_BufProc = tmp6
		this._raw_BufProc = kaitai.ProcessXOR(this._raw__raw_BufProc, []byte{170})
		_io__raw_BufProc := kaitai.NewStream(bytes.NewReader(this._raw_BufProc))
		tmp7 := NewProcessCoerceUsertype1_Foo()
		err = tmp7.Read(_io__raw_BufProc, this, this._root)
		if err != nil {
			return err
		}
		this.BufProc = tmp7
	}
	return err
}
func (this *ProcessCoerceUsertype1_Record) Buf() (v *ProcessCoerceUsertype1_Foo, err error) {
	if (this._f_buf) {
		return this.buf, nil
	}
	var tmp8 *ProcessCoerceUsertype1_Foo;
	if (this.Flag == 0) {
		tmp8 = this.BufUnproc
	} else {
		tmp8 = this.BufProc
	}
	this.buf = tmp8
	this._f_buf = true
	return this.buf, nil
}
