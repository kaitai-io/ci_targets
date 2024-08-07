// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailEqStr : KaitaiStruct
    {
        public static ValidFailEqStr FromFile(string fileName)
        {
            return new ValidFailEqStr(new KaitaiStream(fileName));
        }

        public ValidFailEqStr(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailEqStr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(4));
            if (!(_foo == "BACK"))
            {
                throw new ValidationNotEqualError("BACK", _foo, m_io, "/seq/0");
            }
        }
        private string _foo;
        private ValidFailEqStr m_root;
        private KaitaiStruct m_parent;
        public string Foo { get { return _foo; } }
        public ValidFailEqStr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
