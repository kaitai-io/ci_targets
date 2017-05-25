// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIoEof extends KaitaiStruct {
    public static ExprIoEof fromFile(String fileName) throws IOException {
        return new ExprIoEof(new KaitaiStream(fileName));
    }

    public ExprIoEof(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public ExprIoEof(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public ExprIoEof(KaitaiStream _io, KaitaiStruct _parent, ExprIoEof _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this._raw_substream1 = this._io.readBytes(4);
        KaitaiStream _io__raw_substream1 = new KaitaiStream(_raw_substream1);
        this.substream1 = new OneOrTwo(_io__raw_substream1, this, _root);
        this._raw_substream2 = this._io.readBytes(8);
        KaitaiStream _io__raw_substream2 = new KaitaiStream(_raw_substream2);
        this.substream2 = new OneOrTwo(_io__raw_substream2, this, _root);
    }
    public static class OneOrTwo extends KaitaiStruct {
        public static OneOrTwo fromFile(String fileName) throws IOException {
            return new OneOrTwo(new KaitaiStream(fileName));
        }

        public OneOrTwo(KaitaiStream _io) {
            super(_io);
            _init();
        }

        public OneOrTwo(KaitaiStream _io, ExprIoEof _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public OneOrTwo(KaitaiStream _io, ExprIoEof _parent, ExprIoEof _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
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
