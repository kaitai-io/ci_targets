// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class ProcessStructPadTerm extends KaitaiStruct.ReadWrite {
    public static ProcessStructPadTerm fromFile(String fileName) throws IOException {
        return new ProcessStructPadTerm(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessStructPadTerm() {
        this(null, null, null);
    }

    public ProcessStructPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessStructPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessStructPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessStructPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw__raw_strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this._raw_strPad = KaitaiStream.processXor(this._raw__raw_strPad, ((byte) 21));
        this.strPad_InnerSize = this._raw_strPad.length;
        KaitaiStream _io__raw_strPad = new ByteBufferKaitaiStream(this._raw_strPad);
        this.strPad = new BytesWrapper(_io__raw_strPad, this, _root);
        this.strPad._read();
        this._raw__raw_strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this._raw_strTerm = KaitaiStream.processXor(this._raw__raw_strTerm, ((byte) 21));
        this.strTerm_InnerSize = this._raw_strTerm.length;
        KaitaiStream _io__raw_strTerm = new ByteBufferKaitaiStream(this._raw_strTerm);
        this.strTerm = new BytesWrapper(_io__raw_strTerm, this, _root);
        this.strTerm._read();
        this._raw__raw_strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this._raw_strTermAndPad = KaitaiStream.processXor(this._raw__raw_strTermAndPad, ((byte) 21));
        this.strTermAndPad_InnerSize = this._raw_strTermAndPad.length;
        KaitaiStream _io__raw_strTermAndPad = new ByteBufferKaitaiStream(this._raw_strTermAndPad);
        this.strTermAndPad = new BytesWrapper(_io__raw_strTermAndPad, this, _root);
        this.strTermAndPad._read();
        this._raw__raw_strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true);
        this._raw_strTermInclude = KaitaiStream.processXor(this._raw__raw_strTermInclude, ((byte) 21));
        this.strTermInclude_InnerSize = this._raw_strTermInclude.length;
        KaitaiStream _io__raw_strTermInclude = new ByteBufferKaitaiStream(this._raw_strTermInclude);
        this.strTermInclude = new BytesWrapper(_io__raw_strTermInclude, this, _root);
        this.strTermInclude._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.strPad._fetchInstances();
        this.strTerm._fetchInstances();
        this.strTermAndPad._fetchInstances();
        this.strTermInclude._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_strPad = new ByteBufferKaitaiStream(this.strPad_InnerSize);
        this._io.addChildStream(_io__raw_strPad);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final byte _processXorArg = 21;
            final ProcessStructPadTerm _this = this;
            _io__raw_strPad.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strPad = _io__raw_strPad.toByteArray();
                    _this._raw__raw_strPad = KaitaiStream.processXor(_this._raw_strPad, ((Number) (_processXorArg)).byteValue());
                    if (_this._raw__raw_strPad.length > 20)
                        throw new ConsistencyError("raw(str_pad)", _this._raw__raw_strPad.length, 20);
                    if ( ((_this._raw__raw_strPad.length != 0) && ((_this._raw__raw_strPad[((Number) (_this._raw__raw_strPad.length - 1)).intValue()] & 0xff) == 64)) )
                        throw new ConsistencyError("raw(str_pad)", (_this._raw__raw_strPad[((Number) (_this._raw__raw_strPad.length - 1)).intValue()] & 0xff), 64);
                    parent.writeBytesLimit(_this._raw__raw_strPad, 20, (byte) 64, (byte) 64);
                }
            });
        }
        this.strPad._write_Seq(_io__raw_strPad);
        final KaitaiStream _io__raw_strTerm = new ByteBufferKaitaiStream(this.strTerm_InnerSize);
        this._io.addChildStream(_io__raw_strTerm);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final byte _processXorArg = 21;
            final ProcessStructPadTerm _this = this;
            _io__raw_strTerm.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strTerm = _io__raw_strTerm.toByteArray();
                    _this._raw__raw_strTerm = KaitaiStream.processXor(_this._raw_strTerm, ((Number) (_processXorArg)).byteValue());
                    if (_this._raw__raw_strTerm.length > 20)
                        throw new ConsistencyError("raw(str_term)", _this._raw__raw_strTerm.length, 20);
                    if (KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTerm, ((byte) 64)) != -1)
                        throw new ConsistencyError("raw(str_term)", KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTerm, ((byte) 64)), -1);
                    parent.writeBytesLimit(_this._raw__raw_strTerm, 20, (byte) 64, (byte) 0);
                }
            });
        }
        this.strTerm._write_Seq(_io__raw_strTerm);
        final KaitaiStream _io__raw_strTermAndPad = new ByteBufferKaitaiStream(this.strTermAndPad_InnerSize);
        this._io.addChildStream(_io__raw_strTermAndPad);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final byte _processXorArg = 21;
            final ProcessStructPadTerm _this = this;
            _io__raw_strTermAndPad.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strTermAndPad = _io__raw_strTermAndPad.toByteArray();
                    _this._raw__raw_strTermAndPad = KaitaiStream.processXor(_this._raw_strTermAndPad, ((Number) (_processXorArg)).byteValue());
                    if (_this._raw__raw_strTermAndPad.length > 20)
                        throw new ConsistencyError("raw(str_term_and_pad)", _this._raw__raw_strTermAndPad.length, 20);
                    if (KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTermAndPad, ((byte) 64)) != -1)
                        throw new ConsistencyError("raw(str_term_and_pad)", KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTermAndPad, ((byte) 64)), -1);
                    if (_this._raw__raw_strTermAndPad.length == 20) {
                        if ( ((_this._raw__raw_strTermAndPad.length != 0) && ((_this._raw__raw_strTermAndPad[((Number) (_this._raw__raw_strTermAndPad.length - 1)).intValue()] & 0xff) == 43)) )
                            throw new ConsistencyError("raw(str_term_and_pad)", (_this._raw__raw_strTermAndPad[((Number) (_this._raw__raw_strTermAndPad.length - 1)).intValue()] & 0xff), 43);
                    }
                    parent.writeBytesLimit(_this._raw__raw_strTermAndPad, 20, (byte) 64, (byte) 43);
                }
            });
        }
        this.strTermAndPad._write_Seq(_io__raw_strTermAndPad);
        final KaitaiStream _io__raw_strTermInclude = new ByteBufferKaitaiStream(this.strTermInclude_InnerSize);
        this._io.addChildStream(_io__raw_strTermInclude);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final byte _processXorArg = 21;
            final ProcessStructPadTerm _this = this;
            _io__raw_strTermInclude.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strTermInclude = _io__raw_strTermInclude.toByteArray();
                    _this._raw__raw_strTermInclude = KaitaiStream.processXor(_this._raw_strTermInclude, ((Number) (_processXorArg)).byteValue());
                    if (_this._raw__raw_strTermInclude.length > 20)
                        throw new ConsistencyError("raw(str_term_include)", _this._raw__raw_strTermInclude.length, 20);
                    if (_this._raw__raw_strTermInclude.length < 20) {
                        if (_this._raw__raw_strTermInclude.length == 0)
                            throw new ConsistencyError("raw(str_term_include)", _this._raw__raw_strTermInclude.length, 0);
                        if (KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTermInclude, ((byte) 64)) != _this._raw__raw_strTermInclude.length - 1)
                            throw new ConsistencyError("raw(str_term_include)", KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTermInclude, ((byte) 64)), _this._raw__raw_strTermInclude.length - 1);
                    }
                    if (_this._raw__raw_strTermInclude.length == 20) {
                        if ( ((KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTermInclude, ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTermInclude, ((byte) 64)) != _this._raw__raw_strTermInclude.length - 1)) )
                            throw new ConsistencyError("raw(str_term_include)", KaitaiStream.byteArrayIndexOf(_this._raw__raw_strTermInclude, ((byte) 64)), _this._raw__raw_strTermInclude.length - 1);
                    }
                    parent.writeBytesLimit(_this._raw__raw_strTermInclude, 20, (byte) 0, (byte) 0);
                }
            });
        }
        this.strTermInclude._write_Seq(_io__raw_strTermInclude);
    }

    public void _check() {
        if (!Objects.equals(this.strPad._root(), _root()))
            throw new ConsistencyError("str_pad", this.strPad._root(), _root());
        if (!Objects.equals(this.strPad._parent(), this))
            throw new ConsistencyError("str_pad", this.strPad._parent(), this);
        if (!Objects.equals(this.strTerm._root(), _root()))
            throw new ConsistencyError("str_term", this.strTerm._root(), _root());
        if (!Objects.equals(this.strTerm._parent(), this))
            throw new ConsistencyError("str_term", this.strTerm._parent(), this);
        if (!Objects.equals(this.strTermAndPad._root(), _root()))
            throw new ConsistencyError("str_term_and_pad", this.strTermAndPad._root(), _root());
        if (!Objects.equals(this.strTermAndPad._parent(), this))
            throw new ConsistencyError("str_term_and_pad", this.strTermAndPad._parent(), this);
        if (!Objects.equals(this.strTermInclude._root(), _root()))
            throw new ConsistencyError("str_term_include", this.strTermInclude._root(), _root());
        if (!Objects.equals(this.strTermInclude._parent(), this))
            throw new ConsistencyError("str_term_include", this.strTermInclude._parent(), this);
        _dirty = false;
    }
    public static class BytesWrapper extends KaitaiStruct.ReadWrite {
        public static BytesWrapper fromFile(String fileName) throws IOException {
            return new BytesWrapper(new ByteBufferKaitaiStream(fileName));
        }
        public BytesWrapper() {
            this(null, null, null);
        }

        public BytesWrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BytesWrapper(KaitaiStream _io, ProcessStructPadTerm _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, ProcessStructPadTerm _parent, ProcessStructPadTerm _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readBytesFull();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.value);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
            _dirty = false;
        }
        private byte[] value;
        private ProcessStructPadTerm _root;
        private ProcessStructPadTerm _parent;
        public byte[] value() { return value; }
        public void setValue(byte[] _v) { _dirty = true; value = _v; }
        public ProcessStructPadTerm _root() { return _root; }
        public void set_root(ProcessStructPadTerm _v) { _dirty = true; _root = _v; }
        public ProcessStructPadTerm _parent() { return _parent; }
        public void set_parent(ProcessStructPadTerm _v) { _dirty = true; _parent = _v; }
    }
    private BytesWrapper strPad;
    private BytesWrapper strTerm;
    private BytesWrapper strTermAndPad;
    private BytesWrapper strTermInclude;
    private ProcessStructPadTerm _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_strPad;
    private int strPad_InnerSize;
    private byte[] _raw__raw_strPad;
    private byte[] _raw_strTerm;
    private int strTerm_InnerSize;
    private byte[] _raw__raw_strTerm;
    private byte[] _raw_strTermAndPad;
    private int strTermAndPad_InnerSize;
    private byte[] _raw__raw_strTermAndPad;
    private byte[] _raw_strTermInclude;
    private int strTermInclude_InnerSize;
    private byte[] _raw__raw_strTermInclude;
    public BytesWrapper strPad() { return strPad; }
    public void setStrPad(BytesWrapper _v) { _dirty = true; strPad = _v; }
    public BytesWrapper strTerm() { return strTerm; }
    public void setStrTerm(BytesWrapper _v) { _dirty = true; strTerm = _v; }
    public BytesWrapper strTermAndPad() { return strTermAndPad; }
    public void setStrTermAndPad(BytesWrapper _v) { _dirty = true; strTermAndPad = _v; }
    public BytesWrapper strTermInclude() { return strTermInclude; }
    public void setStrTermInclude(BytesWrapper _v) { _dirty = true; strTermInclude = _v; }
    public ProcessStructPadTerm _root() { return _root; }
    public void set_root(ProcessStructPadTerm _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_strPad() { return _raw_strPad; }
    public void set_raw_StrPad(byte[] _v) { _dirty = true; _raw_strPad = _v; }
    public int strPad_InnerSize() { return strPad_InnerSize; }
    public void setStrPad_InnerSize(int _v) { _dirty = true; strPad_InnerSize = _v; }
    public byte[] _raw__raw_strPad() { return _raw__raw_strPad; }
    public void set_raw__raw_StrPad(byte[] _v) { _dirty = true; _raw__raw_strPad = _v; }
    public byte[] _raw_strTerm() { return _raw_strTerm; }
    public void set_raw_StrTerm(byte[] _v) { _dirty = true; _raw_strTerm = _v; }
    public int strTerm_InnerSize() { return strTerm_InnerSize; }
    public void setStrTerm_InnerSize(int _v) { _dirty = true; strTerm_InnerSize = _v; }
    public byte[] _raw__raw_strTerm() { return _raw__raw_strTerm; }
    public void set_raw__raw_StrTerm(byte[] _v) { _dirty = true; _raw__raw_strTerm = _v; }
    public byte[] _raw_strTermAndPad() { return _raw_strTermAndPad; }
    public void set_raw_StrTermAndPad(byte[] _v) { _dirty = true; _raw_strTermAndPad = _v; }
    public int strTermAndPad_InnerSize() { return strTermAndPad_InnerSize; }
    public void setStrTermAndPad_InnerSize(int _v) { _dirty = true; strTermAndPad_InnerSize = _v; }
    public byte[] _raw__raw_strTermAndPad() { return _raw__raw_strTermAndPad; }
    public void set_raw__raw_StrTermAndPad(byte[] _v) { _dirty = true; _raw__raw_strTermAndPad = _v; }
    public byte[] _raw_strTermInclude() { return _raw_strTermInclude; }
    public void set_raw_StrTermInclude(byte[] _v) { _dirty = true; _raw_strTermInclude = _v; }
    public int strTermInclude_InnerSize() { return strTermInclude_InnerSize; }
    public void setStrTermInclude_InnerSize(int _v) { _dirty = true; strTermInclude_InnerSize = _v; }
    public byte[] _raw__raw_strTermInclude() { return _raw__raw_strTermInclude; }
    public void set_raw__raw_StrTermInclude(byte[] _v) { _dirty = true; _raw__raw_strTermInclude = _v; }
}
