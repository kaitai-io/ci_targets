// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class ExprIoEof extends KaitaiStruct.ReadWrite {
    public static ExprIoEof fromFile(String fileName) throws IOException {
        return new ExprIoEof(new ByteBufferKaitaiStream(fileName));
    }
    public ExprIoEof() {
        this(null, null, null);
    }

    public ExprIoEof(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoEof(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprIoEof(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprIoEof _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_substream1 = this._io.readBytes(4);
        KaitaiStream _io__raw_substream1 = new ByteBufferKaitaiStream(this._raw_substream1);
        this.substream1 = new OneOrTwo(_io__raw_substream1, this, _root);
        this.substream1._read();
        this._raw_substream2 = this._io.readBytes(8);
        KaitaiStream _io__raw_substream2 = new ByteBufferKaitaiStream(this._raw_substream2);
        this.substream2 = new OneOrTwo(_io__raw_substream2, this, _root);
        this.substream2._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.substream1._fetchInstances();
        this.substream2._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_substream1 = new ByteBufferKaitaiStream(4);
        this._io.addChildStream(_io__raw_substream1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (4));
            final ExprIoEof _this = this;
            _io__raw_substream1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_substream1 = _io__raw_substream1.toByteArray();
                    if (_this._raw_substream1.length != 4)
                        throw new ConsistencyError("raw(substream1)", 4, _this._raw_substream1.length);
                    parent.writeBytes(_this._raw_substream1);
                }
            });
        }
        this.substream1._write_Seq(_io__raw_substream1);
        final KaitaiStream _io__raw_substream2 = new ByteBufferKaitaiStream(8);
        this._io.addChildStream(_io__raw_substream2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (8));
            final ExprIoEof _this = this;
            _io__raw_substream2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_substream2 = _io__raw_substream2.toByteArray();
                    if (_this._raw_substream2.length != 8)
                        throw new ConsistencyError("raw(substream2)", 8, _this._raw_substream2.length);
                    parent.writeBytes(_this._raw_substream2);
                }
            });
        }
        this.substream2._write_Seq(_io__raw_substream2);
    }

    public void _check() {
        if (!Objects.equals(this.substream1._root(), _root()))
            throw new ConsistencyError("substream1", _root(), this.substream1._root());
        if (!Objects.equals(this.substream1._parent(), this))
            throw new ConsistencyError("substream1", this, this.substream1._parent());
        if (!Objects.equals(this.substream2._root(), _root()))
            throw new ConsistencyError("substream2", _root(), this.substream2._root());
        if (!Objects.equals(this.substream2._parent(), this))
            throw new ConsistencyError("substream2", this, this.substream2._parent());
        _dirty = false;
    }
    public static class OneOrTwo extends KaitaiStruct.ReadWrite {
        public static OneOrTwo fromFile(String fileName) throws IOException {
            return new OneOrTwo(new ByteBufferKaitaiStream(fileName));
        }
        public OneOrTwo() {
            this(null, null, null);
        }

        public OneOrTwo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public OneOrTwo(KaitaiStream _io, ExprIoEof _parent) {
            this(_io, _parent, null);
        }

        public OneOrTwo(KaitaiStream _io, ExprIoEof _parent, ExprIoEof _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.one = this._io.readU4le();
            if (!(_io().isEof())) {
                this.two = this._io.readU4le();
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            if (!(_io().isEof())) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU4le(this.one);
            if (!(_io().isEof())) {
                this._io.writeU4le(this.two);
            }
        }

        public void _check() {
            _dirty = false;
        }
        private Boolean reflectEof;
        public Boolean reflectEof() {
            if (this.reflectEof != null)
                return this.reflectEof;
            this.reflectEof = _io().isEof();
            return this.reflectEof;
        }
        public void _invalidateReflectEof() { this.reflectEof = null; }
        private long one;
        private Long two;
        private ExprIoEof _root;
        private ExprIoEof _parent;
        public long one() { return one; }
        public void setOne(long _v) { _dirty = true; one = _v; }
        public Long two() { return two; }
        public void setTwo(Long _v) { _dirty = true; two = _v; }
        public ExprIoEof _root() { return _root; }
        public void set_root(ExprIoEof _v) { _dirty = true; _root = _v; }
        public ExprIoEof _parent() { return _parent; }
        public void set_parent(ExprIoEof _v) { _dirty = true; _parent = _v; }
    }
    private OneOrTwo substream1;
    private OneOrTwo substream2;
    private ExprIoEof _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_substream1;
    private byte[] _raw_substream2;
    public OneOrTwo substream1() { return substream1; }
    public void setSubstream1(OneOrTwo _v) { _dirty = true; substream1 = _v; }
    public OneOrTwo substream2() { return substream2; }
    public void setSubstream2(OneOrTwo _v) { _dirty = true; substream2 = _v; }
    public ExprIoEof _root() { return _root; }
    public void set_root(ExprIoEof _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_substream1() { return _raw_substream1; }
    public void set_raw_Substream1(byte[] _v) { _dirty = true; _raw_substream1 = _v; }
    public byte[] _raw_substream2() { return _raw_substream2; }
    public void set_raw_Substream2(byte[] _v) { _dirty = true; _raw_substream2 = _v; }
}
