// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailRangeStr : KaitaiStruct
    {
        public static ValidFailRangeStr FromFile(string fileName)
        {
            return new ValidFailRangeStr(new KaitaiStream(fileName));
        }

        public ValidFailRangeStr(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRangeStr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(2));
            if (!((Foo.CompareTo("H@") >= 0)))
            {
                throw new ValidationLessThanError("H@", Foo, M_Io, "/seq/0");
            }
            if (!((Foo.CompareTo("O~") <= 0)))
            {
                throw new ValidationGreaterThanError("O~", Foo, M_Io, "/seq/0");
            }
        }
        private string _foo;
        private ValidFailRangeStr m_root;
        private KaitaiStruct m_parent;
        public string Foo { get { return _foo; } }
        public ValidFailRangeStr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
