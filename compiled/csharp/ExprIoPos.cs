// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprIoPos : KaitaiStruct
    {
        public static ExprIoPos FromFile(string fileName)
        {
            return new ExprIoPos(new KaitaiStream(fileName));
        }

        public ExprIoPos(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprIoPos p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_substream1 = m_io.ReadBytes(16);
            var io___raw_substream1 = new KaitaiStream(__raw_substream1);
            _substream1 = new AllPlusNumber(io___raw_substream1, this, m_root);
            __raw_substream2 = m_io.ReadBytes(14);
            var io___raw_substream2 = new KaitaiStream(__raw_substream2);
            _substream2 = new AllPlusNumber(io___raw_substream2, this, m_root);
        }
        public partial class AllPlusNumber : KaitaiStruct
        {
            public static AllPlusNumber FromFile(string fileName)
            {
                return new AllPlusNumber(new KaitaiStream(fileName));
            }

            public AllPlusNumber(KaitaiStream p__io, ExprIoPos p__parent = null, ExprIoPos p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _myStr = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true));
                _body = m_io.ReadBytes((M_Io.Size - M_Io.Pos) - 2);
                _number = m_io.ReadU2le();
            }
            public string MyStr { get { return _myStr; } }
            public byte[] Body { get { return _body; } }
            public ushort Number { get { return _number; } }
            public ExprIoPos M_Root { get { return m_root; } }
            public ExprIoPos M_Parent { get { return m_parent; } }
            private string _myStr;
            private byte[] _body;
            private ushort _number;
            private ExprIoPos m_root;
            private ExprIoPos m_parent;
        }
        public AllPlusNumber Substream1 { get { return _substream1; } }
        public AllPlusNumber Substream2 { get { return _substream2; } }
        public ExprIoPos M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawSubstream1 { get { return __raw_substream1; } }
        public byte[] M_RawSubstream2 { get { return __raw_substream2; } }
        private AllPlusNumber _substream1;
        private AllPlusNumber _substream2;
        private ExprIoPos m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_substream1;
        private byte[] __raw_substream2;
    }
}
