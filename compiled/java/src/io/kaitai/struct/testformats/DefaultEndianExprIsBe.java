// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DefaultEndianExprIsBe extends KaitaiStruct {
    public static DefaultEndianExprIsBe fromFile(String fileName) throws IOException {
        return new DefaultEndianExprIsBe(new ByteBufferKaitaiStream(fileName));
    }

    public DefaultEndianExprIsBe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultEndianExprIsBe(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public DefaultEndianExprIsBe(KaitaiStream _io, KaitaiStruct _parent, DefaultEndianExprIsBe _root) {
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

    public void _fetchInstances() {
        for (int i = 0; i < this.docs.size(); i++) {
            this.docs.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class Doc extends KaitaiStruct {
        public static Doc fromFile(String fileName) throws IOException {
            return new Doc(new ByteBufferKaitaiStream(fileName));
        }

        public Doc(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsBe _parent) {
            this(_io, _parent, null);
        }

        public Doc(KaitaiStream _io, DefaultEndianExprIsBe _parent, DefaultEndianExprIsBe _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.indicator = this._io.readBytes(2);
            this.main = new MainObj(this._io, this, _root);
        }

        public void _fetchInstances() {
            this.main._fetchInstances();
        }
        public static class MainObj extends KaitaiStruct {
            public static MainObj fromFile(String fileName) throws IOException {
                return new MainObj(new ByteBufferKaitaiStream(fileName));
            }
            private Boolean _is_le;

            public MainObj(KaitaiStream _io) {
                this(_io, null, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc _parent) {
                this(_io, _parent, null);
            }

            public MainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc _parent, DefaultEndianExprIsBe _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                {
                    byte[] on = _parent().indicator();
                    if (Arrays.equals(on, new byte[] { 77, 77 })) {
                        this._is_le = false;
                    }
                    else {
                        this._is_le = true;
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

            public void _fetchInstances() {
                instInt();
                instSub();
                this.instSub._fetchInstances();
            }
            public static class SubMainObj extends KaitaiStruct {
                private Boolean _is_le;

                public SubMainObj(KaitaiStream _io, DefaultEndianExprIsBe.Doc.MainObj _parent, DefaultEndianExprIsBe _root, boolean _is_le) {
                    super(_io);
                    this._parent = _parent;
                    this._root = _root;
                    this._is_le = _is_le;
                    _read();
                }
                private void _read() {

                    if (_is_le == null) {
                        throw new KaitaiStream.UndecidedEndiannessError();
                    } else if (_is_le) {
                        _readLE();
                    } else {
                        _readBE();
                    }
                }
                private void _readLE() {
                    this.foo = this._io.readU4le();
                }
                private void _readBE() {
                    this.foo = this._io.readU4be();
                }

                public void _fetchInstances() {
                }
                private long foo;
                private DefaultEndianExprIsBe _root;
                private DefaultEndianExprIsBe.Doc.MainObj _parent;
                public long foo() { return foo; }
                public DefaultEndianExprIsBe _root() { return _root; }
                public DefaultEndianExprIsBe.Doc.MainObj _parent() { return _parent; }
            }
            private Long instInt;
            public Long instInt() {
                if (this.instInt != null)
                    return this.instInt;
                long _pos = this._io.pos();
                this._io.seek(2);
                if (_is_le) {
                    this.instInt = this._io.readU4le();
                } else {
                    this.instInt = this._io.readU4be();
                }
                this._io.seek(_pos);
                return this.instInt;
            }
            private SubMainObj instSub;
            public SubMainObj instSub() {
                if (this.instSub != null)
                    return this.instSub;
                long _pos = this._io.pos();
                this._io.seek(2);
                if (_is_le) {
                    this.instSub = new SubMainObj(this._io, this, _root, _is_le);
                } else {
                    this.instSub = new SubMainObj(this._io, this, _root, _is_le);
                }
                this._io.seek(_pos);
                return this.instSub;
            }
            private long someInt;
            private int someIntBe;
            private int someIntLe;
            private DefaultEndianExprIsBe _root;
            private DefaultEndianExprIsBe.Doc _parent;
            public long someInt() { return someInt; }
            public int someIntBe() { return someIntBe; }
            public int someIntLe() { return someIntLe; }
            public DefaultEndianExprIsBe _root() { return _root; }
            public DefaultEndianExprIsBe.Doc _parent() { return _parent; }
        }
        private byte[] indicator;
        private MainObj main;
        private DefaultEndianExprIsBe _root;
        private DefaultEndianExprIsBe _parent;
        public byte[] indicator() { return indicator; }
        public MainObj main() { return main; }
        public DefaultEndianExprIsBe _root() { return _root; }
        public DefaultEndianExprIsBe _parent() { return _parent; }
    }
    private List<Doc> docs;
    private DefaultEndianExprIsBe _root;
    private KaitaiStruct _parent;
    public List<Doc> docs() { return docs; }
    public DefaultEndianExprIsBe _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
