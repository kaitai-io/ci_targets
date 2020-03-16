// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{

    /// <summary>
    /// Sample docstring
    /// </summary>
    /// <remarks>
    /// Reference: Plain text description of doc ref, page 42
    /// </remarks>
    /// <remarks>
    /// Reference: <a href="http://www.example.com/some/path/?even_with=query&amp;more=2">Source</a>
    /// </remarks>
    /// <remarks>
    /// Reference: <a href="http://www.example.com/three">Documentation name</a>
    /// </remarks>
    public partial class DocstringsDocrefMulti : KaitaiStruct
    {
        public static DocstringsDocrefMulti FromFile(string fileName)
        {
            return new DocstringsDocrefMulti(new KaitaiStream(fileName));
        }

        public DocstringsDocrefMulti(KaitaiStream p__io, KaitaiStruct p__parent = null, DocstringsDocrefMulti p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
        }
        private DocstringsDocrefMulti m_root;
        private KaitaiStruct m_parent;
        public DocstringsDocrefMulti M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
