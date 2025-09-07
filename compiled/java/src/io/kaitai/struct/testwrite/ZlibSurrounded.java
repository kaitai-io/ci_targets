// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class ZlibSurrounded extends KaitaiStruct.ReadWrite {
    public static ZlibSurrounded fromFile(String fileName) throws IOException {
        return new ZlibSurrounded(new ByteBufferKaitaiStream(fileName));
    }
    public ZlibSurrounded() {
        this(null, null, null);
    }

    public ZlibSurrounded(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ZlibSurrounded(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ZlibSurrounded(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ZlibSurrounded _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.pre = this._io.readBytes(4);
        this._raw__raw_zlib = this._io.readBytes(12);
        this._raw_zlib = KaitaiStream.processZlib(this._raw__raw_zlib);
        this.zlib_InnerSize = this._raw_zlib.length;
        KaitaiStream _io__raw_zlib = new ByteBufferKaitaiStream(this._raw_zlib);
        this.zlib = new Inflated(_io__raw_zlib, this, _root);
        this.zlib._read();
        this.post = this._io.readBytes(4);
        _dirty = false;
    }

    public void _fetchInstances() {
        this.zlib._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.pre);
        final KaitaiStream _io__raw_zlib = new ByteBufferKaitaiStream(this.zlib_InnerSize);
        this._io.addChildStream(_io__raw_zlib);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (12));
            final ZlibSurrounded _this = this;
            _io__raw_zlib.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_zlib = _io__raw_zlib.toByteArray();
                    _this._raw__raw_zlib = KaitaiStream.unprocessZlib(_this._raw_zlib);
                    if (_this._raw__raw_zlib.length != 12)
                        throw new ConsistencyError("raw(zlib)", 12, _this._raw__raw_zlib.length);
                    parent.writeBytes(_this._raw__raw_zlib);
                }
            });
        }
        this.zlib._write_Seq(_io__raw_zlib);
        this._io.writeBytes(this.post);
    }

    public void _check() {
        if (this.pre.length != 4)
            throw new ConsistencyError("pre", 4, this.pre.length);
        if (!Objects.equals(this.zlib._root(), _root()))
            throw new ConsistencyError("zlib", _root(), this.zlib._root());
        if (!Objects.equals(this.zlib._parent(), this))
            throw new ConsistencyError("zlib", this, this.zlib._parent());
        if (this.post.length != 4)
            throw new ConsistencyError("post", 4, this.post.length);
        _dirty = false;
    }
    public static class Inflated extends KaitaiStruct.ReadWrite {
        public static Inflated fromFile(String fileName) throws IOException {
            return new Inflated(new ByteBufferKaitaiStream(fileName));
        }
        public Inflated() {
            this(null, null, null);
        }

        public Inflated(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Inflated(KaitaiStream _io, ZlibSurrounded _parent) {
            this(_io, _parent, null);
        }

        public Inflated(KaitaiStream _io, ZlibSurrounded _parent, ZlibSurrounded _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.num = this._io.readS4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeS4le(this.num);
        }

        public void _check() {
            _dirty = false;
        }
        private int num;
        private ZlibSurrounded _root;
        private ZlibSurrounded _parent;
        public int num() { return num; }
        public void setNum(int _v) { _dirty = true; num = _v; }
        public ZlibSurrounded _root() { return _root; }
        public void set_root(ZlibSurrounded _v) { _dirty = true; _root = _v; }
        public ZlibSurrounded _parent() { return _parent; }
        public void set_parent(ZlibSurrounded _v) { _dirty = true; _parent = _v; }
    }
    private byte[] pre;
    private Inflated zlib;
    private byte[] post;
    private ZlibSurrounded _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_zlib;
    private int zlib_InnerSize;
    private byte[] _raw__raw_zlib;
    public byte[] pre() { return pre; }
    public void setPre(byte[] _v) { _dirty = true; pre = _v; }
    public Inflated zlib() { return zlib; }
    public void setZlib(Inflated _v) { _dirty = true; zlib = _v; }
    public byte[] post() { return post; }
    public void setPost(byte[] _v) { _dirty = true; post = _v; }
    public ZlibSurrounded _root() { return _root; }
    public void set_root(ZlibSurrounded _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_zlib() { return _raw_zlib; }
    public void set_raw_Zlib(byte[] _v) { _dirty = true; _raw_zlib = _v; }
    public int zlib_InnerSize() { return zlib_InnerSize; }
    public void setZlib_InnerSize(int _v) { _dirty = true; zlib_InnerSize = _v; }
    public byte[] _raw__raw_zlib() { return _raw__raw_zlib; }
    public void set_raw__raw_Zlib(byte[] _v) { _dirty = true; _raw__raw_zlib = _v; }
}
