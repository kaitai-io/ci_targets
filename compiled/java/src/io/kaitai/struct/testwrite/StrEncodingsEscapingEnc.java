// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.Charset;

public class StrEncodingsEscapingEnc extends KaitaiStruct.ReadWrite {
    public static StrEncodingsEscapingEnc fromFile(String fileName) throws IOException {
        return new StrEncodingsEscapingEnc(new ByteBufferKaitaiStream(fileName));
    }
    public StrEncodingsEscapingEnc() {
        this(null, null, null);
    }

    public StrEncodingsEscapingEnc(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodingsEscapingEnc(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrEncodingsEscapingEnc(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrEncodingsEscapingEnc _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenOf1 = this._io.readU2le();
        this._raw_str1 = this._io.readBytes(lenOf1());
        KaitaiStream _io__raw_str1 = new ByteBufferKaitaiStream(this._raw_str1);
        this.str1 = new Str1Wrapper(_io__raw_str1, this, _root);
        this.str1._read();
        this.lenOf2 = this._io.readU2le();
        this._raw_str2 = this._io.readBytes(lenOf2());
        KaitaiStream _io__raw_str2 = new ByteBufferKaitaiStream(this._raw_str2);
        this.str2 = new Str2Wrapper(_io__raw_str2, this, _root);
        this.str2._read();
        this.lenOf3 = this._io.readU2le();
        this._raw_str3 = this._io.readBytes(lenOf3());
        KaitaiStream _io__raw_str3 = new ByteBufferKaitaiStream(this._raw_str3);
        this.str3 = new Str3Wrapper(_io__raw_str3, this, _root);
        this.str3._read();
        this.lenOf4 = this._io.readU2le();
        this._raw_str4 = this._io.readBytes(lenOf4());
        KaitaiStream _io__raw_str4 = new ByteBufferKaitaiStream(this._raw_str4);
        this.str4 = new Str4Wrapper(_io__raw_str4, this, _root);
        this.str4._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.str1._fetchInstances();
        this.str2._fetchInstances();
        this.str3._fetchInstances();
        this.str4._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU2le(this.lenOf1);
        final KaitaiStream _io__raw_str1 = new ByteBufferKaitaiStream(lenOf1());
        this._io.addChildStream(_io__raw_str1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (lenOf1()));
            final StrEncodingsEscapingEnc _this = this;
            _io__raw_str1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_str1 = _io__raw_str1.toByteArray();
                    if (_this._raw_str1.length != lenOf1())
                        throw new ConsistencyError("raw(str1)", lenOf1(), _this._raw_str1.length);
                    parent.writeBytes(_this._raw_str1);
                }
            });
        }
        this.str1._write_Seq(_io__raw_str1);
        this._io.writeU2le(this.lenOf2);
        final KaitaiStream _io__raw_str2 = new ByteBufferKaitaiStream(lenOf2());
        this._io.addChildStream(_io__raw_str2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (lenOf2()));
            final StrEncodingsEscapingEnc _this = this;
            _io__raw_str2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_str2 = _io__raw_str2.toByteArray();
                    if (_this._raw_str2.length != lenOf2())
                        throw new ConsistencyError("raw(str2)", lenOf2(), _this._raw_str2.length);
                    parent.writeBytes(_this._raw_str2);
                }
            });
        }
        this.str2._write_Seq(_io__raw_str2);
        this._io.writeU2le(this.lenOf3);
        final KaitaiStream _io__raw_str3 = new ByteBufferKaitaiStream(lenOf3());
        this._io.addChildStream(_io__raw_str3);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (lenOf3()));
            final StrEncodingsEscapingEnc _this = this;
            _io__raw_str3.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_str3 = _io__raw_str3.toByteArray();
                    if (_this._raw_str3.length != lenOf3())
                        throw new ConsistencyError("raw(str3)", lenOf3(), _this._raw_str3.length);
                    parent.writeBytes(_this._raw_str3);
                }
            });
        }
        this.str3._write_Seq(_io__raw_str3);
        this._io.writeU2le(this.lenOf4);
        final KaitaiStream _io__raw_str4 = new ByteBufferKaitaiStream(lenOf4());
        this._io.addChildStream(_io__raw_str4);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (lenOf4()));
            final StrEncodingsEscapingEnc _this = this;
            _io__raw_str4.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_str4 = _io__raw_str4.toByteArray();
                    if (_this._raw_str4.length != lenOf4())
                        throw new ConsistencyError("raw(str4)", lenOf4(), _this._raw_str4.length);
                    parent.writeBytes(_this._raw_str4);
                }
            });
        }
        this.str4._write_Seq(_io__raw_str4);
    }

    public void _check() {
        if (!Objects.equals(this.str1._root(), _root()))
            throw new ConsistencyError("str1", _root(), this.str1._root());
        if (!Objects.equals(this.str1._parent(), this))
            throw new ConsistencyError("str1", this, this.str1._parent());
        if (!Objects.equals(this.str2._root(), _root()))
            throw new ConsistencyError("str2", _root(), this.str2._root());
        if (!Objects.equals(this.str2._parent(), this))
            throw new ConsistencyError("str2", this, this.str2._parent());
        if (!Objects.equals(this.str3._root(), _root()))
            throw new ConsistencyError("str3", _root(), this.str3._root());
        if (!Objects.equals(this.str3._parent(), this))
            throw new ConsistencyError("str3", this, this.str3._parent());
        if (!Objects.equals(this.str4._root(), _root()))
            throw new ConsistencyError("str4", _root(), this.str4._root());
        if (!Objects.equals(this.str4._parent(), this))
            throw new ConsistencyError("str4", this, this.str4._parent());
        _dirty = false;
    }
    public static class Str1Wrapper extends KaitaiStruct.ReadWrite {
        public static Str1Wrapper fromFile(String fileName) throws IOException {
            return new Str1Wrapper(new ByteBufferKaitaiStream(fileName));
        }
        public Str1Wrapper() {
            this(null, null, null);
        }

        public Str1Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Str1Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent) {
            this(_io, _parent, null);
        }

        public Str1Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent, StrEncodingsEscapingEnc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
            v();
            if (this.v != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteV = _enabledV;
        }

        public void _check() {
            if (_enabledV) {
            }
            _dirty = false;
        }
        public String v() {
            if (_shouldWriteV)
                _writeV();
            if (this.v != null)
                return this.v;
            if (!_enabledV)
                return null;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.v = new String(this._io.readBytesFull(), Charset.forName("ASCII\\\\x"));
            this._io.seek(_pos);
            return this.v;
        }
        public void setV(String _v) { _dirty = true; v = _v; }
        public void setV_Enabled(boolean _v) { _dirty = true; _enabledV = _v; }

        private void _writeV() {
            _shouldWriteV = false;
            long _pos = this._io.pos();
            this._io.seek(0);
            this._io.writeBytes((this.v).getBytes(Charset.forName("ASCII\\\\x")));
            if (!(this._io.isEof()))
                throw new ConsistencyError("v", 0, this._io.size() - this._io.pos());
            this._io.seek(_pos);
        }
        public StrEncodingsEscapingEnc _root() { return _root; }
        public void set_root(StrEncodingsEscapingEnc _v) { _dirty = true; _root = _v; }
        public StrEncodingsEscapingEnc _parent() { return _parent; }
        public void set_parent(StrEncodingsEscapingEnc _v) { _dirty = true; _parent = _v; }
        private String v;
        private boolean _shouldWriteV = false;
        private boolean _enabledV = true;
        private StrEncodingsEscapingEnc _root;
        private StrEncodingsEscapingEnc _parent;
    }
    public static class Str2Wrapper extends KaitaiStruct.ReadWrite {
        public static Str2Wrapper fromFile(String fileName) throws IOException {
            return new Str2Wrapper(new ByteBufferKaitaiStream(fileName));
        }
        public Str2Wrapper() {
            this(null, null, null);
        }

        public Str2Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Str2Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent) {
            this(_io, _parent, null);
        }

        public Str2Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent, StrEncodingsEscapingEnc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
            v();
            if (this.v != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteV = _enabledV;
        }

        public void _check() {
            if (_enabledV) {
            }
            _dirty = false;
        }
        public String v() {
            if (_shouldWriteV)
                _writeV();
            if (this.v != null)
                return this.v;
            if (!_enabledV)
                return null;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.v = new String(this._io.readBytesFull(), Charset.forName("UTF-8\\'x"));
            this._io.seek(_pos);
            return this.v;
        }
        public void setV(String _v) { _dirty = true; v = _v; }
        public void setV_Enabled(boolean _v) { _dirty = true; _enabledV = _v; }

        private void _writeV() {
            _shouldWriteV = false;
            long _pos = this._io.pos();
            this._io.seek(0);
            this._io.writeBytes((this.v).getBytes(Charset.forName("UTF-8\\'x")));
            if (!(this._io.isEof()))
                throw new ConsistencyError("v", 0, this._io.size() - this._io.pos());
            this._io.seek(_pos);
        }
        public StrEncodingsEscapingEnc _root() { return _root; }
        public void set_root(StrEncodingsEscapingEnc _v) { _dirty = true; _root = _v; }
        public StrEncodingsEscapingEnc _parent() { return _parent; }
        public void set_parent(StrEncodingsEscapingEnc _v) { _dirty = true; _parent = _v; }
        private String v;
        private boolean _shouldWriteV = false;
        private boolean _enabledV = true;
        private StrEncodingsEscapingEnc _root;
        private StrEncodingsEscapingEnc _parent;
    }
    public static class Str3Wrapper extends KaitaiStruct.ReadWrite {
        public static Str3Wrapper fromFile(String fileName) throws IOException {
            return new Str3Wrapper(new ByteBufferKaitaiStream(fileName));
        }
        public Str3Wrapper() {
            this(null, null, null);
        }

        public Str3Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Str3Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent) {
            this(_io, _parent, null);
        }

        public Str3Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent, StrEncodingsEscapingEnc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
            v();
            if (this.v != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteV = _enabledV;
        }

        public void _check() {
            if (_enabledV) {
            }
            _dirty = false;
        }
        public String v() {
            if (_shouldWriteV)
                _writeV();
            if (this.v != null)
                return this.v;
            if (!_enabledV)
                return null;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.v = new String(this._io.readBytesFull(), Charset.forName("SJIS\\\"x"));
            this._io.seek(_pos);
            return this.v;
        }
        public void setV(String _v) { _dirty = true; v = _v; }
        public void setV_Enabled(boolean _v) { _dirty = true; _enabledV = _v; }

        private void _writeV() {
            _shouldWriteV = false;
            long _pos = this._io.pos();
            this._io.seek(0);
            this._io.writeBytes((this.v).getBytes(Charset.forName("SJIS\\\"x")));
            if (!(this._io.isEof()))
                throw new ConsistencyError("v", 0, this._io.size() - this._io.pos());
            this._io.seek(_pos);
        }
        public StrEncodingsEscapingEnc _root() { return _root; }
        public void set_root(StrEncodingsEscapingEnc _v) { _dirty = true; _root = _v; }
        public StrEncodingsEscapingEnc _parent() { return _parent; }
        public void set_parent(StrEncodingsEscapingEnc _v) { _dirty = true; _parent = _v; }
        private String v;
        private boolean _shouldWriteV = false;
        private boolean _enabledV = true;
        private StrEncodingsEscapingEnc _root;
        private StrEncodingsEscapingEnc _parent;
    }
    public static class Str4Wrapper extends KaitaiStruct.ReadWrite {
        public static Str4Wrapper fromFile(String fileName) throws IOException {
            return new Str4Wrapper(new ByteBufferKaitaiStream(fileName));
        }
        public Str4Wrapper() {
            this(null, null, null);
        }

        public Str4Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Str4Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent) {
            this(_io, _parent, null);
        }

        public Str4Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent, StrEncodingsEscapingEnc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
            v();
            if (this.v != null) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteV = _enabledV;
        }

        public void _check() {
            if (_enabledV) {
            }
            _dirty = false;
        }
        public String v() {
            if (_shouldWriteV)
                _writeV();
            if (this.v != null)
                return this.v;
            if (!_enabledV)
                return null;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.v = new String(this._io.readBytesFull(), Charset.forName("IBM437\\nx"));
            this._io.seek(_pos);
            return this.v;
        }
        public void setV(String _v) { _dirty = true; v = _v; }
        public void setV_Enabled(boolean _v) { _dirty = true; _enabledV = _v; }

        private void _writeV() {
            _shouldWriteV = false;
            long _pos = this._io.pos();
            this._io.seek(0);
            this._io.writeBytes((this.v).getBytes(Charset.forName("IBM437\\nx")));
            if (!(this._io.isEof()))
                throw new ConsistencyError("v", 0, this._io.size() - this._io.pos());
            this._io.seek(_pos);
        }
        public StrEncodingsEscapingEnc _root() { return _root; }
        public void set_root(StrEncodingsEscapingEnc _v) { _dirty = true; _root = _v; }
        public StrEncodingsEscapingEnc _parent() { return _parent; }
        public void set_parent(StrEncodingsEscapingEnc _v) { _dirty = true; _parent = _v; }
        private String v;
        private boolean _shouldWriteV = false;
        private boolean _enabledV = true;
        private StrEncodingsEscapingEnc _root;
        private StrEncodingsEscapingEnc _parent;
    }
    public int lenOf1() { return lenOf1; }
    public void setLenOf1(int _v) { _dirty = true; lenOf1 = _v; }
    public Str1Wrapper str1() { return str1; }
    public void setStr1(Str1Wrapper _v) { _dirty = true; str1 = _v; }
    public int lenOf2() { return lenOf2; }
    public void setLenOf2(int _v) { _dirty = true; lenOf2 = _v; }
    public Str2Wrapper str2() { return str2; }
    public void setStr2(Str2Wrapper _v) { _dirty = true; str2 = _v; }
    public int lenOf3() { return lenOf3; }
    public void setLenOf3(int _v) { _dirty = true; lenOf3 = _v; }
    public Str3Wrapper str3() { return str3; }
    public void setStr3(Str3Wrapper _v) { _dirty = true; str3 = _v; }
    public int lenOf4() { return lenOf4; }
    public void setLenOf4(int _v) { _dirty = true; lenOf4 = _v; }
    public Str4Wrapper str4() { return str4; }
    public void setStr4(Str4Wrapper _v) { _dirty = true; str4 = _v; }
    public StrEncodingsEscapingEnc _root() { return _root; }
    public void set_root(StrEncodingsEscapingEnc _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_str1() { return _raw_str1; }
    public void set_raw_Str1(byte[] _v) { _dirty = true; _raw_str1 = _v; }
    public byte[] _raw_str2() { return _raw_str2; }
    public void set_raw_Str2(byte[] _v) { _dirty = true; _raw_str2 = _v; }
    public byte[] _raw_str3() { return _raw_str3; }
    public void set_raw_Str3(byte[] _v) { _dirty = true; _raw_str3 = _v; }
    public byte[] _raw_str4() { return _raw_str4; }
    public void set_raw_Str4(byte[] _v) { _dirty = true; _raw_str4 = _v; }
    private int lenOf1;
    private Str1Wrapper str1;
    private int lenOf2;
    private Str2Wrapper str2;
    private int lenOf3;
    private Str3Wrapper str3;
    private int lenOf4;
    private Str4Wrapper str4;
    private StrEncodingsEscapingEnc _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_str1;
    private byte[] _raw_str2;
    private byte[] _raw_str3;
    private byte[] _raw_str4;
}
