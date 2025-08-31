// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class StrEosPadTerm extends KaitaiStruct.ReadWrite {
    public static StrEosPadTerm fromFile(String fileName) throws IOException {
        return new StrEosPadTerm(new ByteBufferKaitaiStream(fileName));
    }
    public StrEosPadTerm() {
        this(null, null, null);
    }

    public StrEosPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEosPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrEosPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrEosPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_strPad = this._io.readBytes(20);
        KaitaiStream _io__raw_strPad = new ByteBufferKaitaiStream(this._raw_strPad);
        this.strPad = new StrPadType(_io__raw_strPad, this, _root);
        this.strPad._read();
        this._raw_strTerm = this._io.readBytes(20);
        KaitaiStream _io__raw_strTerm = new ByteBufferKaitaiStream(this._raw_strTerm);
        this.strTerm = new StrTermType(_io__raw_strTerm, this, _root);
        this.strTerm._read();
        this._raw_strTermAndPad = this._io.readBytes(20);
        KaitaiStream _io__raw_strTermAndPad = new ByteBufferKaitaiStream(this._raw_strTermAndPad);
        this.strTermAndPad = new StrTermAndPadType(_io__raw_strTermAndPad, this, _root);
        this.strTermAndPad._read();
        this._raw_strTermInclude = this._io.readBytes(20);
        KaitaiStream _io__raw_strTermInclude = new ByteBufferKaitaiStream(this._raw_strTermInclude);
        this.strTermInclude = new StrTermIncludeType(_io__raw_strTermInclude, this, _root);
        this.strTermInclude._read();
    }

    public void _fetchInstances() {
        this.strPad._fetchInstances();
        this.strTerm._fetchInstances();
        this.strTermAndPad._fetchInstances();
        this.strTermInclude._fetchInstances();
    }

    public void _write_Seq() {
        final KaitaiStream _io__raw_strPad = new ByteBufferKaitaiStream(20);
        this._io.addChildStream(_io__raw_strPad);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StrEosPadTerm _this = this;
            _io__raw_strPad.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strPad = _io__raw_strPad.toByteArray();
                    if (_this._raw_strPad.length != 20)
                        throw new ConsistencyError("raw(str_pad)", _this._raw_strPad.length, 20);
                    parent.writeBytes(_this._raw_strPad);
                }
            });
        }
        this.strPad._write_Seq(_io__raw_strPad);
        final KaitaiStream _io__raw_strTerm = new ByteBufferKaitaiStream(20);
        this._io.addChildStream(_io__raw_strTerm);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StrEosPadTerm _this = this;
            _io__raw_strTerm.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strTerm = _io__raw_strTerm.toByteArray();
                    if (_this._raw_strTerm.length != 20)
                        throw new ConsistencyError("raw(str_term)", _this._raw_strTerm.length, 20);
                    parent.writeBytes(_this._raw_strTerm);
                }
            });
        }
        this.strTerm._write_Seq(_io__raw_strTerm);
        final KaitaiStream _io__raw_strTermAndPad = new ByteBufferKaitaiStream(20);
        this._io.addChildStream(_io__raw_strTermAndPad);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StrEosPadTerm _this = this;
            _io__raw_strTermAndPad.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strTermAndPad = _io__raw_strTermAndPad.toByteArray();
                    if (_this._raw_strTermAndPad.length != 20)
                        throw new ConsistencyError("raw(str_term_and_pad)", _this._raw_strTermAndPad.length, 20);
                    parent.writeBytes(_this._raw_strTermAndPad);
                }
            });
        }
        this.strTermAndPad._write_Seq(_io__raw_strTermAndPad);
        final KaitaiStream _io__raw_strTermInclude = new ByteBufferKaitaiStream(20);
        this._io.addChildStream(_io__raw_strTermInclude);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StrEosPadTerm _this = this;
            _io__raw_strTermInclude.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_strTermInclude = _io__raw_strTermInclude.toByteArray();
                    if (_this._raw_strTermInclude.length != 20)
                        throw new ConsistencyError("raw(str_term_include)", _this._raw_strTermInclude.length, 20);
                    parent.writeBytes(_this._raw_strTermInclude);
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
    }
    public static class StrPadType extends KaitaiStruct.ReadWrite {
        public static StrPadType fromFile(String fileName) throws IOException {
            return new StrPadType(new ByteBufferKaitaiStream(fileName));
        }
        public StrPadType() {
            this(null, null, null);
        }

        public StrPadType(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrPadType(KaitaiStream _io, StrEosPadTerm _parent) {
            this(_io, _parent, null);
        }

        public StrPadType(KaitaiStream _io, StrEosPadTerm _parent, StrEosPadTerm _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(KaitaiStream.bytesStripRight(this._io.readBytesFull(), (byte) 64), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytesLimit((this.value).getBytes(Charset.forName("UTF-8")), this._io.size() - this._io.pos(), (byte) 64, (byte) 64);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
        }
        private String value;
        private StrEosPadTerm _root;
        private StrEosPadTerm _parent;
        public String value() { return value; }
        public void setValue(String _v) { value = _v; }
        public StrEosPadTerm _root() { return _root; }
        public void set_root(StrEosPadTerm _v) { _root = _v; }
        public StrEosPadTerm _parent() { return _parent; }
        public void set_parent(StrEosPadTerm _v) { _parent = _v; }
    }
    public static class StrTermAndPadType extends KaitaiStruct.ReadWrite {
        public static StrTermAndPadType fromFile(String fileName) throws IOException {
            return new StrTermAndPadType(new ByteBufferKaitaiStream(fileName));
        }
        public StrTermAndPadType() {
            this(null, null, null);
        }

        public StrTermAndPadType(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrTermAndPadType(KaitaiStream _io, StrEosPadTerm _parent) {
            this(_io, _parent, null);
        }

        public StrTermAndPadType(KaitaiStream _io, StrEosPadTerm _parent, StrEosPadTerm _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), (byte) 43), (byte) 64, false), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytesLimit((this.value).getBytes(Charset.forName("UTF-8")), this._io.size() - this._io.pos(), (byte) 64, (byte) 43);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
        }
        private String value;
        private StrEosPadTerm _root;
        private StrEosPadTerm _parent;
        public String value() { return value; }
        public void setValue(String _v) { value = _v; }
        public StrEosPadTerm _root() { return _root; }
        public void set_root(StrEosPadTerm _v) { _root = _v; }
        public StrEosPadTerm _parent() { return _parent; }
        public void set_parent(StrEosPadTerm _v) { _parent = _v; }
    }
    public static class StrTermIncludeType extends KaitaiStruct.ReadWrite {
        public static StrTermIncludeType fromFile(String fileName) throws IOException {
            return new StrTermIncludeType(new ByteBufferKaitaiStream(fileName));
        }
        public StrTermIncludeType() {
            this(null, null, null);
        }

        public StrTermIncludeType(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrTermIncludeType(KaitaiStream _io, StrEosPadTerm _parent) {
            this(_io, _parent, null);
        }

        public StrTermIncludeType(KaitaiStream _io, StrEosPadTerm _parent, StrEosPadTerm _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 64, true), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytesLimit((this.value).getBytes(Charset.forName("UTF-8")), this._io.size() - this._io.pos(), (byte) 0, (byte) 0);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
        }
        private String value;
        private StrEosPadTerm _root;
        private StrEosPadTerm _parent;
        public String value() { return value; }
        public void setValue(String _v) { value = _v; }
        public StrEosPadTerm _root() { return _root; }
        public void set_root(StrEosPadTerm _v) { _root = _v; }
        public StrEosPadTerm _parent() { return _parent; }
        public void set_parent(StrEosPadTerm _v) { _parent = _v; }
    }
    public static class StrTermType extends KaitaiStruct.ReadWrite {
        public static StrTermType fromFile(String fileName) throws IOException {
            return new StrTermType(new ByteBufferKaitaiStream(fileName));
        }
        public StrTermType() {
            this(null, null, null);
        }

        public StrTermType(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrTermType(KaitaiStream _io, StrEosPadTerm _parent) {
            this(_io, _parent, null);
        }

        public StrTermType(KaitaiStream _io, StrEosPadTerm _parent, StrEosPadTerm _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 64, false), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytesLimit((this.value).getBytes(Charset.forName("UTF-8")), this._io.size() - this._io.pos(), (byte) 64, (byte) 0);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
        }
        private String value;
        private StrEosPadTerm _root;
        private StrEosPadTerm _parent;
        public String value() { return value; }
        public void setValue(String _v) { value = _v; }
        public StrEosPadTerm _root() { return _root; }
        public void set_root(StrEosPadTerm _v) { _root = _v; }
        public StrEosPadTerm _parent() { return _parent; }
        public void set_parent(StrEosPadTerm _v) { _parent = _v; }
    }
    private StrPadType strPad;
    private StrTermType strTerm;
    private StrTermAndPadType strTermAndPad;
    private StrTermIncludeType strTermInclude;
    private StrEosPadTerm _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_strPad;
    private byte[] _raw_strTerm;
    private byte[] _raw_strTermAndPad;
    private byte[] _raw_strTermInclude;
    public StrPadType strPad() { return strPad; }
    public void setStrPad(StrPadType _v) { strPad = _v; }
    public StrTermType strTerm() { return strTerm; }
    public void setStrTerm(StrTermType _v) { strTerm = _v; }
    public StrTermAndPadType strTermAndPad() { return strTermAndPad; }
    public void setStrTermAndPad(StrTermAndPadType _v) { strTermAndPad = _v; }
    public StrTermIncludeType strTermInclude() { return strTermInclude; }
    public void setStrTermInclude(StrTermIncludeType _v) { strTermInclude = _v; }
    public StrEosPadTerm _root() { return _root; }
    public void set_root(StrEosPadTerm _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_strPad() { return _raw_strPad; }
    public void set_raw_StrPad(byte[] _v) { _raw_strPad = _v; }
    public byte[] _raw_strTerm() { return _raw_strTerm; }
    public void set_raw_StrTerm(byte[] _v) { _raw_strTerm = _v; }
    public byte[] _raw_strTermAndPad() { return _raw_strTermAndPad; }
    public void set_raw_StrTermAndPad(byte[] _v) { _raw_strTermAndPad = _v; }
    public byte[] _raw_strTermInclude() { return _raw_strTermInclude; }
    public void set_raw_StrTermInclude(byte[] _v) { _raw_strTermInclude = _v; }
}
