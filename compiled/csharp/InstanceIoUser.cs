// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class InstanceIoUser : KaitaiStruct
    {
        public static InstanceIoUser FromFile(string fileName)
        {
            return new InstanceIoUser(new KaitaiStream(fileName));
        }

        public InstanceIoUser(KaitaiStream io, KaitaiStruct parent = null, InstanceIoUser root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _qtyEntries = m_io.ReadU4le();
            _entries = new List<Entry>((int) (QtyEntries));
            for (var i = 0; i < QtyEntries; i++) {
                _entries.Add(new Entry(m_io, this, m_root));
            }
            __raw_strings = m_io.ReadBytesFull();
            var io___raw_strings = new KaitaiStream(__raw_strings);
            _strings = new StringsObj(io___raw_strings, this, m_root);
        }
        public partial class Entry : KaitaiStruct
        {
            public static Entry FromFile(string fileName)
            {
                return new Entry(new KaitaiStream(fileName));
            }

            public Entry(KaitaiStream io, InstanceIoUser parent = null, InstanceIoUser root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                f_name = false;
                _read();
            }
            private void _read() {
                _nameOfs = m_io.ReadU4le();
                _value = m_io.ReadU4le();
            }
            private bool f_name;
            private string _name;
            public string Name
            {
                get
                {
                    if (f_name)
                        return _name;
                    KaitaiStream io = M_Root.Strings.M_Io;
                    long _pos = io.Pos;
                    io.Seek(NameOfs);
                    _name = System.Text.Encoding.GetEncoding("UTF-8").GetString(io.ReadBytesTerm(0, false, true, true));
                    io.Seek(_pos);
                    f_name = true;
                    return _name;
                }
            }
            private uint _nameOfs;
            private uint _value;
            private InstanceIoUser m_root;
            private InstanceIoUser m_parent;
            public uint NameOfs { get { return _nameOfs; } }
            public uint Value { get { return _value; } }
            public InstanceIoUser M_Root { get { return m_root; } }
            public InstanceIoUser M_Parent { get { return m_parent; } }
        }
        public partial class StringsObj : KaitaiStruct
        {
            public static StringsObj FromFile(string fileName)
            {
                return new StringsObj(new KaitaiStream(fileName));
            }

            public StringsObj(KaitaiStream io, InstanceIoUser parent = null, InstanceIoUser root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _str = new List<string>();
                while (!m_io.IsEof) {
                    _str.Add(System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true)));
                }
            }
            private List<string> _str;
            private InstanceIoUser m_root;
            private InstanceIoUser m_parent;
            public List<string> Str { get { return _str; } }
            public InstanceIoUser M_Root { get { return m_root; } }
            public InstanceIoUser M_Parent { get { return m_parent; } }
        }
        private uint _qtyEntries;
        private List<Entry> _entries;
        private StringsObj _strings;
        private InstanceIoUser m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_strings;
        public uint QtyEntries { get { return _qtyEntries; } }
        public List<Entry> Entries { get { return _entries; } }
        public StringsObj Strings { get { return _strings; } }
        public InstanceIoUser M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawStrings { get { return __raw_strings; } }
    }
}
