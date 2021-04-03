// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class TermU1Val : KaitaiStruct
    {
        public static TermU1Val FromFile(string fileName)
        {
            return new TermU1Val(new KaitaiStream(fileName));
        }

        public TermU1Val(KaitaiStream p__io, KaitaiStruct p__parent = null, TermU1Val p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadBytesTerm(227, false, false, true);
            _bar = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(171, true, true, true));
        }
        private byte[] _foo;
        private string _bar;
        private TermU1Val m_root;
        private KaitaiStruct m_parent;
        public byte[] Foo { get { return _foo; } }
        public string Bar { get { return _bar; } }
        public TermU1Val M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
