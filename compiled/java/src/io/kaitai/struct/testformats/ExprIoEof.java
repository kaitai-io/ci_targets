// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIoEof extends KaitaiStruct {
    public static ExprIoEof fromFile(String fileName) throws IOException {
        return new ExprIoEof(new ByteBufferKaitaiStream(fileName));
    }

    public ExprIoEof(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIoEof(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprIoEof(KaitaiStream _io, KaitaiStruct _parent, ExprIoEof _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_substream1 = this._io.substream(4);
        this.substream1 = new OneOrTwo(_io_substream1, this, _root);
        KaitaiStream _io_substream2 = this._io.substream(8);
        this.substream2 = new OneOrTwo(_io_substream2, this, _root);
    }
    public static class OneOrTwo extends KaitaiStruct {
        public static OneOrTwo fromFile(String fileName) throws IOException {
            return new OneOrTwo(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.one = this._io.readU4le();
            if (!(_io().isEof())) {
                this.two = this._io.readU4le();
            }
        }
        private Boolean reflectEof;
        public Boolean reflectEof() {
            if (this.reflectEof != null)
                return this.reflectEof;
            boolean _tmp = (boolean) (_io().isEof());
            this.reflectEof = _tmp;
            return this.reflectEof;
        }
        private long one;
        private Long two;
        private ExprIoEof _root;
        private ExprIoEof _parent;
        public long one() { return one; }
        public Long two() { return two; }
        public ExprIoEof _root() { return _root; }
        public ExprIoEof _parent() { return _parent; }
    }
    private OneOrTwo substream1;
    private OneOrTwo substream2;
    private ExprIoEof _root;
    private KaitaiStruct _parent;
    private byte[] _raw_substream1;
    private byte[] _raw_substream2;
    public OneOrTwo substream1() { return substream1; }
    public OneOrTwo substream2() { return substream2; }
    public ExprIoEof _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_substream1() { return _raw_substream1; }
    public byte[] _raw_substream2() { return _raw_substream2; }
}
