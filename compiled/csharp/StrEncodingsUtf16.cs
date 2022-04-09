// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrEncodingsUtf16 : KaitaiStruct
    {
        public static StrEncodingsUtf16 FromFile(string fileName)
        {
            return new StrEncodingsUtf16(new KaitaiStream(fileName));
        }

        public StrEncodingsUtf16(KaitaiStream p__io, KaitaiStruct p__parent = null, StrEncodingsUtf16 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _lenBe = m_io.ReadU4le();
            __raw_beBomRemoved = m_io.ReadBytes(LenBe);
            var io___raw_beBomRemoved = new KaitaiStream(__raw_beBomRemoved);
            _beBomRemoved = new StrBeBomRemoved(io___raw_beBomRemoved, this, m_root);
            _lenLe = m_io.ReadU4le();
            __raw_leBomRemoved = m_io.ReadBytes(LenLe);
            var io___raw_leBomRemoved = new KaitaiStream(__raw_leBomRemoved);
            _leBomRemoved = new StrLeBomRemoved(io___raw_leBomRemoved, this, m_root);
        }
        public partial class StrBeBomRemoved : KaitaiStruct
        {
            public static StrBeBomRemoved FromFile(string fileName)
            {
                return new StrBeBomRemoved(new KaitaiStream(fileName));
            }

            public StrBeBomRemoved(KaitaiStream p__io, StrEncodingsUtf16 p__parent = null, StrEncodingsUtf16 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _bom = m_io.ReadU2be();
                _str = System.Text.Encoding.GetEncoding("UTF-16BE").GetString(m_io.ReadBytesFull());
            }
            private ushort _bom;
            private string _str;
            private StrEncodingsUtf16 m_root;
            private StrEncodingsUtf16 m_parent;
            public ushort Bom { get { return _bom; } }
            public string Str { get { return _str; } }
            public StrEncodingsUtf16 M_Root { get { return m_root; } }
            public StrEncodingsUtf16 M_Parent { get { return m_parent; } }
        }
        public partial class StrLeBomRemoved : KaitaiStruct
        {
            public static StrLeBomRemoved FromFile(string fileName)
            {
                return new StrLeBomRemoved(new KaitaiStream(fileName));
            }

            public StrLeBomRemoved(KaitaiStream p__io, StrEncodingsUtf16 p__parent = null, StrEncodingsUtf16 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _bom = m_io.ReadU2le();
                _str = System.Text.Encoding.GetEncoding("UTF-16LE").GetString(m_io.ReadBytesFull());
            }
            private ushort _bom;
            private string _str;
            private StrEncodingsUtf16 m_root;
            private StrEncodingsUtf16 m_parent;
            public ushort Bom { get { return _bom; } }
            public string Str { get { return _str; } }
            public StrEncodingsUtf16 M_Root { get { return m_root; } }
            public StrEncodingsUtf16 M_Parent { get { return m_parent; } }
        }
        private uint _lenBe;
        private StrBeBomRemoved _beBomRemoved;
        private uint _lenLe;
        private StrLeBomRemoved _leBomRemoved;
        private StrEncodingsUtf16 m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_beBomRemoved;
        private byte[] __raw_leBomRemoved;
        public uint LenBe { get { return _lenBe; } }
        public StrBeBomRemoved BeBomRemoved { get { return _beBomRemoved; } }
        public uint LenLe { get { return _lenLe; } }
        public StrLeBomRemoved LeBomRemoved { get { return _leBomRemoved; } }
        public StrEncodingsUtf16 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBeBomRemoved { get { return __raw_beBomRemoved; } }
        public byte[] M_RawLeBomRemoved { get { return __raw_leBomRemoved; } }
    }
}
