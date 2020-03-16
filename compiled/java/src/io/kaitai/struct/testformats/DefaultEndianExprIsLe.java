// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public class DefaultEndianExprIsLe extends KaitaiStruct {
    public static DefaultEndianExprIsLe fromFile(String fileName) throws IOException {
        return new DefaultEndianExprIsLe(new ByteBufferKaitaiStream(fileName));
    }

    public DefaultEndianExprIsLe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultEndianExprIsLe(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public DefaultEndianExprIsLe(KaitaiStream _io, KaitaiStruct _parent, DefaultEndianExprIsLe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.docs = new ArrayList<Doc>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.docs.add(new Doc(this._io, this, _root));
                i++;
            }
        }
    }
    public static class Doc extends KaitaiStruct {
        public static Doc fromFile(String fileName) throws IOException {
            return new Doc(new ByteBufferKaitaiStream(fileName));
        }

        public Doc(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsLe _parent) {
            this(_io, _parent, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsLe _parent, DefaultEndianExprIsLe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.indicator = this._io.readBytes(2);
            this.main = new MainObj(this._io, this, _root);
        }
        public static class MainObj extends KaitaiStruct {
            public static MainObj fromFile(String fileName) throws IOException {
                return new MainObj(new ByteBufferKaitaiStream(fileName));
            }
            private Boolean _is_le;

            public MainObj(KaitaiStream _io) {
                this(_io, null, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsLe.Doc _parent) {
                this(_io, _parent, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsLe.Doc _parent, DefaultEndianExprIsLe _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                {
                    byte[] on = _parent().indicator();
                    if (Arrays.equals(on, new byte[] { 73, 73 })) {
                        boolean _tmp = (boolean) (true);
                        this._is_le = _tmp;
                    }
                    else {
                        boolean _tmp = (boolean) (false);
                        this._is_le = _tmp;
                    }
                }

                if (_is_le == null) {
                    throw new KaitaiStream.UndecidedEndiannessError();
                } else if (_is_le) {
                    _readLE();
                } else {
                    _readBE();
                }
            }
            private void _readLE() {
                this.someInt = this._io.readU4le();
                this.someIntBe = this._io.readU2be();
                this.someIntLe = this._io.readU2le();
            }
            private void _readBE() {
                this.someInt = this._io.readU4be();
                this.someIntBe = this._io.readU2be();
                this.someIntLe = this._io.readU2le();
            }
            private long someInt;
            private int someIntBe;
            private int someIntLe;
            private DefaultEndianExprIsLe _root;
            private DefaultEndianExprIsLe.Doc _parent;
            public long someInt() { return someInt; }
            public int someIntBe() { return someIntBe; }
            public int someIntLe() { return someIntLe; }
            public DefaultEndianExprIsLe _root() { return _root; }
            public DefaultEndianExprIsLe.Doc _parent() { return _parent; }
        }
        private byte[] indicator;
        private MainObj main;
        private DefaultEndianExprIsLe _root;
        private DefaultEndianExprIsLe _parent;
        public byte[] indicator() { return indicator; }
        public MainObj main() { return main; }
        public DefaultEndianExprIsLe _root() { return _root; }
        public DefaultEndianExprIsLe _parent() { return _parent; }
    }
    private ArrayList<Doc> docs;
    private DefaultEndianExprIsLe _root;
    private KaitaiStruct _parent;
    public ArrayList<Doc> docs() { return docs; }
    public DefaultEndianExprIsLe _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
