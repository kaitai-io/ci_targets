// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ToStringCustom : KaitaiStruct
    {
        public static ToStringCustom FromFile(string fileName)
        {
            return new ToStringCustom(new KaitaiStream(fileName));
        }

        public ToStringCustom(KaitaiStream p__io, KaitaiStruct p__parent = null, ToStringCustom p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _s1 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(124, false, true, true));
            _s2 = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(124, false, true, true));
        }
        private string _s1;
        private string _s2;
        private ToStringCustom m_root;
        private KaitaiStruct m_parent;
        public string S1 { get { return _s1; } }
        public string S2 { get { return _s2; } }
        public ToStringCustom M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
