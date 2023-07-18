// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;

public class RepeatNStrz extends KaitaiStruct {
    public static RepeatNStrz fromFile(String fileName) throws IOException {
        return new RepeatNStrz(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatNStrz(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNStrz(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatNStrz(KaitaiStream _io, KaitaiStruct _parent, RepeatNStrz _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.qty = this._io.readU4le();
        this.lines = new ArrayList<String>();
        for (int i = 0; i < qty(); i++) {
            this.lines.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
        }
    }
    private long qty;
    private ArrayList<String> lines;
    private RepeatNStrz _root;
    private KaitaiStruct _parent;
    public long qty() { return qty; }
    public ArrayList<String> lines() { return lines; }
    public RepeatNStrz _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
