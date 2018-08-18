// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ProcessCoerceUsertype2 struct {
	Records []*ProcessCoerceUsertype2_Record
	_io *kaitai.Stream
	_root *ProcessCoerceUsertype2
	_parent interface{}
}

func (this *ProcessCoerceUsertype2) Read(io *kaitai.Stream, parent interface{}, root *ProcessCoerceUsertype2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.Records = make([]*ProcessCoerceUsertype2_Record, 2)
	for i := range this.Records {
		tmp1 := new(ProcessCoerceUsertype2_Record)
		err = tmp1.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Records[i] = tmp1
	}
	return err
}
type ProcessCoerceUsertype2_Record struct {
	Flag uint8
	BufUnproc *ProcessCoerceUsertype2_Foo
	BufProc *ProcessCoerceUsertype2_Foo
	_io *kaitai.Stream
	_root *ProcessCoerceUsertype2
	_parent *ProcessCoerceUsertype2
	_raw_BufProc []byte
	_raw__raw_BufProc []byte
	_f_buf bool
	buf *ProcessCoerceUsertype2_Foo
}

func (this *ProcessCoerceUsertype2_Record) Read(io *kaitai.Stream, parent *ProcessCoerceUsertype2, root *ProcessCoerceUsertype2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Flag = tmp2
	if (this.Flag == 0) {
		tmp3 := new(ProcessCoerceUsertype2_Foo)
		err = tmp3.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.BufUnproc = tmp3
	}
	if (this.Flag != 0) {
		tmp4, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		this._raw_BufProc = tmp4
		_io__raw_BufProc := kaitai.NewStream(bytes.NewReader(this._raw_BufProc))
		tmp5 := new(ProcessCoerceUsertype2_Foo)
		err = tmp5.Read(_io__raw_BufProc, this, this._root)
		if err != nil {
			return err
		}
		this.BufProc = tmp5
	}
	return err
}
func (this *ProcessCoerceUsertype2_Record) Buf() (v *ProcessCoerceUsertype2_Foo, err error) {
	if (this._f_buf) {
		return this.buf, nil
	}
	var tmp6 *ProcessCoerceUsertype2_Foo;
	if (this.Flag == 0) {
		tmp6 = this.BufUnproc
	} else {
		tmp6 = this.BufProc
	}
	this.buf = tmp6
	this._f_buf = true
	return this.buf, nil
}
type ProcessCoerceUsertype2_Foo struct {
	Value uint32
	_io *kaitai.Stream
	_root *ProcessCoerceUsertype2
	_parent *ProcessCoerceUsertype2_Record
}

func (this *ProcessCoerceUsertype2_Foo) Read(io *kaitai.Stream, parent *ProcessCoerceUsertype2_Record, root *ProcessCoerceUsertype2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp7, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Value = tmp7
	return err
}
