// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class RepeatNStrzDouble extends KaitaiStruct {
    public static RepeatNStrzDouble fromFile(String fileName) throws IOException {
        return new RepeatNStrzDouble(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatNStrzDouble(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNStrzDouble(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatNStrzDouble(KaitaiStream _io, KaitaiStruct _parent, RepeatNStrzDouble _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.qty = this._io.readU4le();
        this.lines1 = new ArrayList<String>();
        for (int i = 0; i < (qty() / 2); i++) {
            this.lines1.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), Charset.forName("UTF-8")));
        }
        this.lines2 = new ArrayList<String>();
        for (int i = 0; i < (qty() / 2); i++) {
            this.lines2.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), Charset.forName("UTF-8")));
        }
    }
    private long qty;
    private ArrayList<String> lines1;
    private ArrayList<String> lines2;
    private RepeatNStrzDouble _root;
    private KaitaiStruct _parent;
    public long qty() { return qty; }
    public ArrayList<String> lines1() { return lines1; }
    public ArrayList<String> lines2() { return lines2; }
    public RepeatNStrzDouble _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
