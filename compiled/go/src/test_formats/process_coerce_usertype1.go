// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ProcessCoerceUsertype1 struct {
	Records []*ProcessCoerceUsertype1_Record
	_io *kaitai.Stream
	_root *ProcessCoerceUsertype1
	_parent interface{}
}

func (this *ProcessCoerceUsertype1) Read(io *kaitai.Stream, parent interface{}, root *ProcessCoerceUsertype1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.Records = make([]*ProcessCoerceUsertype1_Record, 2)
	for i := range this.Records {
		tmp1 := new(ProcessCoerceUsertype1_Record)
		err = tmp1.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Records[i] = tmp1
	}
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

func (this *ProcessCoerceUsertype1_Record) Read(io *kaitai.Stream, parent *ProcessCoerceUsertype1, root *ProcessCoerceUsertype1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Flag = tmp2
	if (this.Flag == 0) {
		tmp3, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		this._raw_BufUnproc = tmp3
		_io__raw_BufUnproc := kaitai.NewStream(bytes.NewReader(this._raw_BufUnproc))
		tmp4 := new(ProcessCoerceUsertype1_Foo)
		err = tmp4.Read(_io__raw_BufUnproc, this, this._root)
		if err != nil {
			return err
		}
		this.BufUnproc = tmp4
	}
	if (this.Flag != 0) {
		tmp5, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		this._raw__raw_BufProc = tmp5
		this._raw_BufProc = kaitai.ProcessXOR(this._raw__raw_BufProc, []byte{170})
		_io__raw_BufProc := kaitai.NewStream(bytes.NewReader(this._raw_BufProc))
		tmp6 := new(ProcessCoerceUsertype1_Foo)
		err = tmp6.Read(_io__raw_BufProc, this, this._root)
		if err != nil {
			return err
		}
		this.BufProc = tmp6
	}
	return err
}
func (this *ProcessCoerceUsertype1_Record) Buf() (v *ProcessCoerceUsertype1_Foo, err error) {
	if (this._f_buf) {
		return this.buf, nil
	}
	var tmp7 *ProcessCoerceUsertype1_Foo;
	if (this.Flag == 0) {
		tmp7 = this.BufUnproc
	} else {
		tmp7 = this.BufProc
	}
	this.buf = tmp7
	this._f_buf = true
	return this.buf, nil
}
type ProcessCoerceUsertype1_Foo struct {
	Value uint32
	_io *kaitai.Stream
	_root *ProcessCoerceUsertype1
	_parent *ProcessCoerceUsertype1_Record
}

func (this *ProcessCoerceUsertype1_Foo) Read(io *kaitai.Stream, parent *ProcessCoerceUsertype1_Record, root *ProcessCoerceUsertype1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp8, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Value = uint32(tmp8)
	return err
}
