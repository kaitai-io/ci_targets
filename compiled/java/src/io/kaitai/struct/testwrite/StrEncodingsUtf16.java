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

public class StrEncodingsUtf16 extends KaitaiStruct.ReadWrite {
    public static StrEncodingsUtf16 fromFile(String fileName) throws IOException {
        return new StrEncodingsUtf16(new ByteBufferKaitaiStream(fileName));
    }
    public StrEncodingsUtf16() {
        this(null, null, null);
    }

    public StrEncodingsUtf16(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodingsUtf16(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrEncodingsUtf16(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrEncodingsUtf16 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenBe = this._io.readU4le();
        this._raw_beBomRemoved = this._io.readBytes(lenBe());
        KaitaiStream _io__raw_beBomRemoved = new ByteBufferKaitaiStream(this._raw_beBomRemoved);
        this.beBomRemoved = new StrBeBomRemoved(_io__raw_beBomRemoved, this, _root);
        this.beBomRemoved._read();
        this.lenLe = this._io.readU4le();
        this._raw_leBomRemoved = this._io.readBytes(lenLe());
        KaitaiStream _io__raw_leBomRemoved = new ByteBufferKaitaiStream(this._raw_leBomRemoved);
        this.leBomRemoved = new StrLeBomRemoved(_io__raw_leBomRemoved, this, _root);
        this.leBomRemoved._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.beBomRemoved._fetchInstances();
        this.leBomRemoved._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.lenBe);
        final KaitaiStream _io__raw_beBomRemoved = new ByteBufferKaitaiStream(lenBe());
        this._io.addChildStream(_io__raw_beBomRemoved);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (lenBe()));
            final StrEncodingsUtf16 _this = this;
            _io__raw_beBomRemoved.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_beBomRemoved = _io__raw_beBomRemoved.toByteArray();
                    if (_this._raw_beBomRemoved.length != lenBe())
                        throw new ConsistencyError("raw(be_bom_removed)", lenBe(), _this._raw_beBomRemoved.length);
                    parent.writeBytes(_this._raw_beBomRemoved);
                }
            });
        }
        this.beBomRemoved._write_Seq(_io__raw_beBomRemoved);
        this._io.writeU4le(this.lenLe);
        final KaitaiStream _io__raw_leBomRemoved = new ByteBufferKaitaiStream(lenLe());
        this._io.addChildStream(_io__raw_leBomRemoved);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (lenLe()));
            final StrEncodingsUtf16 _this = this;
            _io__raw_leBomRemoved.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_leBomRemoved = _io__raw_leBomRemoved.toByteArray();
                    if (_this._raw_leBomRemoved.length != lenLe())
                        throw new ConsistencyError("raw(le_bom_removed)", lenLe(), _this._raw_leBomRemoved.length);
                    parent.writeBytes(_this._raw_leBomRemoved);
                }
            });
        }
        this.leBomRemoved._write_Seq(_io__raw_leBomRemoved);
    }

    public void _check() {
        if (!Objects.equals(this.beBomRemoved._root(), _root()))
            throw new ConsistencyError("be_bom_removed", _root(), this.beBomRemoved._root());
        if (!Objects.equals(this.beBomRemoved._parent(), this))
            throw new ConsistencyError("be_bom_removed", this, this.beBomRemoved._parent());
        if (!Objects.equals(this.leBomRemoved._root(), _root()))
            throw new ConsistencyError("le_bom_removed", _root(), this.leBomRemoved._root());
        if (!Objects.equals(this.leBomRemoved._parent(), this))
            throw new ConsistencyError("le_bom_removed", this, this.leBomRemoved._parent());
        _dirty = false;
    }
    public static class StrBeBomRemoved extends KaitaiStruct.ReadWrite {
        public static StrBeBomRemoved fromFile(String fileName) throws IOException {
            return new StrBeBomRemoved(new ByteBufferKaitaiStream(fileName));
        }
        public StrBeBomRemoved() {
            this(null, null, null);
        }

        public StrBeBomRemoved(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrBeBomRemoved(KaitaiStream _io, StrEncodingsUtf16 _parent) {
            this(_io, _parent, null);
        }

        public StrBeBomRemoved(KaitaiStream _io, StrEncodingsUtf16 _parent, StrEncodingsUtf16 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.bom = this._io.readU2be();
            this.str = new String(this._io.readBytesFull(), StandardCharsets.UTF_16BE);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU2be(this.bom);
            this._io.writeBytes((this.str).getBytes(Charset.forName("UTF-16BE")));
            if (!(this._io.isEof()))
                throw new ConsistencyError("str", 0, this._io.size() - this._io.pos());
        }

        public void _check() {
            _dirty = false;
        }
        private int bom;
        private String str;
        private StrEncodingsUtf16 _root;
        private StrEncodingsUtf16 _parent;
        public int bom() { return bom; }
        public void setBom(int _v) { _dirty = true; bom = _v; }
        public String str() { return str; }
        public void setStr(String _v) { _dirty = true; str = _v; }
        public StrEncodingsUtf16 _root() { return _root; }
        public void set_root(StrEncodingsUtf16 _v) { _dirty = true; _root = _v; }
        public StrEncodingsUtf16 _parent() { return _parent; }
        public void set_parent(StrEncodingsUtf16 _v) { _dirty = true; _parent = _v; }
    }
    public static class StrLeBomRemoved extends KaitaiStruct.ReadWrite {
        public static StrLeBomRemoved fromFile(String fileName) throws IOException {
            return new StrLeBomRemoved(new ByteBufferKaitaiStream(fileName));
        }
        public StrLeBomRemoved() {
            this(null, null, null);
        }

        public StrLeBomRemoved(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrLeBomRemoved(KaitaiStream _io, StrEncodingsUtf16 _parent) {
            this(_io, _parent, null);
        }

        public StrLeBomRemoved(KaitaiStream _io, StrEncodingsUtf16 _parent, StrEncodingsUtf16 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.bom = this._io.readU2le();
            this.str = new String(this._io.readBytesFull(), StandardCharsets.UTF_16LE);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU2le(this.bom);
            this._io.writeBytes((this.str).getBytes(Charset.forName("UTF-16LE")));
            if (!(this._io.isEof()))
                throw new ConsistencyError("str", 0, this._io.size() - this._io.pos());
        }

        public void _check() {
            _dirty = false;
        }
        private int bom;
        private String str;
        private StrEncodingsUtf16 _root;
        private StrEncodingsUtf16 _parent;
        public int bom() { return bom; }
        public void setBom(int _v) { _dirty = true; bom = _v; }
        public String str() { return str; }
        public void setStr(String _v) { _dirty = true; str = _v; }
        public StrEncodingsUtf16 _root() { return _root; }
        public void set_root(StrEncodingsUtf16 _v) { _dirty = true; _root = _v; }
        public StrEncodingsUtf16 _parent() { return _parent; }
        public void set_parent(StrEncodingsUtf16 _v) { _dirty = true; _parent = _v; }
    }
    private long lenBe;
    private StrBeBomRemoved beBomRemoved;
    private long lenLe;
    private StrLeBomRemoved leBomRemoved;
    private StrEncodingsUtf16 _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_beBomRemoved;
    private byte[] _raw_leBomRemoved;
    public long lenBe() { return lenBe; }
    public void setLenBe(long _v) { _dirty = true; lenBe = _v; }
    public StrBeBomRemoved beBomRemoved() { return beBomRemoved; }
    public void setBeBomRemoved(StrBeBomRemoved _v) { _dirty = true; beBomRemoved = _v; }
    public long lenLe() { return lenLe; }
    public void setLenLe(long _v) { _dirty = true; lenLe = _v; }
    public StrLeBomRemoved leBomRemoved() { return leBomRemoved; }
    public void setLeBomRemoved(StrLeBomRemoved _v) { _dirty = true; leBomRemoved = _v; }
    public StrEncodingsUtf16 _root() { return _root; }
    public void set_root(StrEncodingsUtf16 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_beBomRemoved() { return _raw_beBomRemoved; }
    public void set_raw_BeBomRemoved(byte[] _v) { _dirty = true; _raw_beBomRemoved = _v; }
    public byte[] _raw_leBomRemoved() { return _raw_leBomRemoved; }
    public void set_raw_LeBomRemoved(byte[] _v) { _dirty = true; _raw_leBomRemoved = _v; }
}
