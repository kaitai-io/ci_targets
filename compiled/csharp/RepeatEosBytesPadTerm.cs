// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosBytesPadTerm : KaitaiStruct
    {
        public static RepeatEosBytesPadTerm FromFile(string fileName)
        {
            return new RepeatEosBytesPadTerm(new KaitaiStream(fileName));
        }

        public RepeatEosBytesPadTerm(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatEosBytesPadTerm p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<byte[]>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _records.Add(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(5), 170), 85, true));
                    i++;
                }
            }
        }
        private List<byte[]> _records;
        private RepeatEosBytesPadTerm m_root;
        private KaitaiStruct m_parent;
        public List<byte[]> Records { get { return _records; } }
        public RepeatEosBytesPadTerm M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
