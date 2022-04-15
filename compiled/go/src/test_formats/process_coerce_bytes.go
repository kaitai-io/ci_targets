// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ProcessCoerceBytes struct {
	Records []*ProcessCoerceBytes_Record
	_io *kaitai.Stream
	_root *ProcessCoerceBytes
	_parent interface{}
}
func NewProcessCoerceBytes() *ProcessCoerceBytes {
	return &ProcessCoerceBytes{
	}
}

func (this *ProcessCoerceBytes) Read(io *kaitai.Stream, parent interface{}, root *ProcessCoerceBytes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 0; i < int(2); i++ {
		_ = i
		tmp1 := NewProcessCoerceBytes_Record()
		err = tmp1.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Records = append(this.Records, tmp1)
	}
	return err
}
type ProcessCoerceBytes_Record struct {
	Flag uint8
	BufUnproc []byte
	BufProc []byte
	_io *kaitai.Stream
	_root *ProcessCoerceBytes
	_parent *ProcessCoerceBytes
	_raw_BufProc []byte
	_f_buf bool
	buf []byte
}
func NewProcessCoerceBytes_Record() *ProcessCoerceBytes_Record {
	return &ProcessCoerceBytes_Record{
	}
}

func (this *ProcessCoerceBytes_Record) Read(io *kaitai.Stream, parent *ProcessCoerceBytes, root *ProcessCoerceBytes) (err error) {
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
		tmp3 = tmp3
		this.BufUnproc = tmp3
	}
	if (this.Flag != 0) {
		tmp4, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		tmp4 = tmp4
		this._raw_BufProc = tmp4
		this.BufProc = kaitai.ProcessXOR(this._raw_BufProc, []byte{170})
	}
	return err
}
func (this *ProcessCoerceBytes_Record) Buf() (v []byte, err error) {
	if (this._f_buf) {
		return this.buf, nil
	}
	var tmp5 []byte;
	if (this.Flag == 0) {
		tmp5 = this.BufUnproc
	} else {
		tmp5 = this.BufProc
	}
	this.buf = []byte(tmp5)
	this._f_buf = true
	return this.buf, nil
}
